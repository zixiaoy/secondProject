package com.xiaoy.handler;

import com.alibaba.fastjson.JSON;
import com.xiaoy.entity.*;
import com.xiaoy.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/16.
 */
@Controller
@RequestMapping("pages")
public class CandidateControl {
    @Autowired
    private CandidateServ candidateServ;
    @Autowired
    private ResumeServ resumeServ;
    @Autowired
    private FeedbackServ feedbackServ;
    @Autowired
    private DepartmentServ departmentServ;
    @Autowired
    private PositionServ positionServ;
    @Autowired
    private RecruitServ recruitServ;
    @Autowired
    private EmploServ emploServ;

    @RequestMapping(value = "delivery",produces = "application/json;charset=utf-8")
    public String delivery(int visitorId,int positionId,ModelMap model){
        Candidate candidate=candidateServ.findCandidateByVisitorId(visitorId);
        Resume resume=resumeServ.findResumeByVisitorId(visitorId);
        if(candidate==null&&resume!=null){
            candidateServ.saveCandidate(new Candidate(visitorId,new Date(),1,1));
            model.addAttribute("candidate","123");
        }else {
            if(resume==null){
                model.addAttribute("candidate","456");
            }else {
                model.addAttribute("candidate","789");
            }
        }
        return "visitor/visitorPage";
    }

    @RequestMapping("interviewVerify")
    public String interviewVerify(int id,int interview,int admit){
        feedbackServ.updateFeedback(id,2,interview,admit);
        return "visitor/visitorPage";
    }

    @RequestMapping("admin1")
    public String admin1(ModelMap model){
        List<Candidate> candidateAll=candidateServ.findCandidateAll();
        model.addAttribute("candidateAll",candidateAll);
        return "admin/adminPage1";
    }

    @RequestMapping("delCandidate")
    public String delCandidate(int id){
        candidateServ.delCandidate(id);
        return "forward:/pages/admin1";
    }

    @RequestMapping("status.do")
    public String status(int id,int visitorId,Date creaTime,ModelMap model){
        Resume resume=resumeServ.findResumeByVisitorId(visitorId);
        model.addAttribute("candidateId",id);
        model.addAttribute("candidateCreaTime",creaTime);
        model.addAttribute("resume",resume);
        return "admin/resume";
    }

    @RequestMapping("interview.do")
    public String interview(int visitorId,String interviewTime,Date creaTime){
        Date interviewTime2= null;
        try {
            interviewTime2 = new SimpleDateFormat("yyyy-MM-dd").parse(interviewTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        feedbackServ.saveFeedback(new Feedback(1,creaTime,1,0,interviewTime2,0,visitorId));
        return "forward:/pages/admin1";
    }

    @RequestMapping("admin2")
    public String admin2(ModelMap model){
        List<Recruit> recruits=recruitServ.findAllRecruit();
        model.addAttribute("recruits",recruits);
        return "admin/adminPage22";
    }

    @RequestMapping("admin22")
    public String admin22(ModelMap model){
        List<Department> departments=departmentServ.findAllDepartment();
        if(departments.size()!=0){
            List<Position> positionList=positionServ.findPositionByDepartmentId(departments.get(0).getId());
            model.addAttribute("positionList",positionList);
        }
        model.addAttribute("departments",departments);
        return "admin/adminPage2";
    }

    @RequestMapping("admin2.do")
    public String admin2do(Recruit recruit){
        Recruit recruit1=recruitServ.findRecruitByPositionId(recruit.getPositionId());
        if(recruit1==null){
            recruitServ.saveRecruit(recruit);
        }
        return "forward:/pages/admin2";
    }

    @RequestMapping("delRecruit")
    public String delRecruit(int id){
        recruitServ.delRecruit(id);
        return "forward:/pages/admin2";
    }

    @RequestMapping("admin3")
    public String admin3(ModelMap model){
        List<Department> departments=departmentServ.findAllDepartment();
        model.addAttribute("departments",departments);
        return "admin/adminPage3";
    }

    @RequestMapping("selectPosition")
    public String selectPosition(int departmentId,ModelMap model){
        Department department=departmentServ.findDepartmentById(departmentId);
        List<Position> positionList=positionServ.findPositionByDepartmentId(departmentId);
        model.addAttribute("department",department);
        model.addAttribute("positionList",positionList);
        model.addAttribute("departmentId",departmentId);
        return "admin/selectPosition";
    }

    @RequestMapping("selectEmplo")
    public String selectEmplo(int positionId,int departmentId,ModelMap model){
        Position position=positionServ.findPositionById(positionId);
        Department department=departmentServ.findDepartmentById(departmentId);
        List<Employee> employeeList=emploServ.findEmploByPositionId(positionId);
        model.addAttribute("department",department);
        model.addAttribute("position",position);
        model.addAttribute("employeeList",employeeList);
        return "admin/selectEmplo";
    }

    @RequestMapping("delPosition")
    public String delPosition(int positionId,int departmentId,ModelMap model){
        List<Employee> employeeList=emploServ.findEmploByPositionId(positionId);
        if(employeeList.size()!=0){
            model.addAttribute("String",123);
        }else {
            positionServ.delPosition(positionId);
            model.addAttribute("String",456);
        }
        return "forward:/pages/selectPosition";
    }

    @RequestMapping("delDepartment")
    public String delDepartment(int departmentId,ModelMap model){
        List<Employee> employeeList=emploServ.findEmploByDepartmentId(departmentId);
        if(employeeList.size()!=0){
            model.addAttribute("String",123);
        }else {
            departmentServ.delDepartment(departmentId);
            model.addAttribute("String",456);
        }
        return "forward:/pages/admin3";
    }

    @RequestMapping("addDepartment")
    public String addDepartment(){
        return "admin/addDepartment";
    }

    @RequestMapping("addPosition")
    public String addPosition(int departmentId,ModelMap model){
        Department department=departmentServ.findDepartmentById(departmentId);
        model.addAttribute("department",department);
        return "admin/addPosition";
    }

    @RequestMapping("addDepartment.do")
    public String addDepartmentDo(String name,ModelMap model){
        Department department=departmentServ.findDepartmentByName(name);
        if(department!=null){
            model.addAttribute("str",123);
        }else {
            departmentServ.saveDepartment(new Department(name,new Date()));
            model.addAttribute("str",456);
        }
        return "forward:/pages/admin3";
    }

    @RequestMapping("addPosition.do")
    private String addPositionDo(int departmentId,String name,ModelMap model){
        Position position=positionServ.findPositionByName(departmentId, name);
        if(position!=null){
            model.addAttribute("str",123);
        }else {
            positionServ.savePosition(new Position(name,new Date(),departmentId));
            model.addAttribute("str",456);
        }
        return "forward:/pages/selectPosition";
    }

    @RequestMapping("admin5")
    public String admin5(ModelMap model){
        List<Employee> list=emploServ.findAllEmplo();
        List<Employee> employeeList=new ArrayList<Employee>();
        for(Employee emplo:list){
            if(emplo.getRank()!=5){
                employeeList.add(emplo);
            }
        }
        model.addAttribute("employeeList",employeeList);
        return "admin/adminPage5";
    }
}

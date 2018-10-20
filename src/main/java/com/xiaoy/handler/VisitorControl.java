package com.xiaoy.handler;

import com.xiaoy.entity.*;
import com.xiaoy.service.*;
import com.xiaoy.util.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/11.
 */
@Controller
@RequestMapping("pages")
public class VisitorControl {
    @Autowired
    private VisitorServ visitorServ;
    @Autowired
    private RecruitServ recruitServ;
    @Autowired
    private ResumeServ resumeServ;
    @Autowired
    private FeedbackServ feedbackServ;
    @Autowired
    private EmploServ emploServ;
    @Autowired
    private CandidateServ candidateServ;
    @Autowired
    private CultivateServ cultivateServ;
    @Autowired
    private PayObjectionServ payObjectionServ;

    @RequestMapping("regist")
    public String regist(){
        return "regist";
    }

    @RequestMapping("resetPasswords")
    public String resetPasswords(){
        return "resetPasswords";
    }

    @RequestMapping("resetVerify")
    @ResponseBody
    public String resetVerify(int id,String name){
        Visitor visitor=visitorServ.findVisitorByName(name);
        if(visitor!=null&&visitor.getId()==id){
            return "123";
        }else {
            return "456";
        }
    }

    @RequestMapping("resetPasswords.do")
    public String resetPasswords(Visitor visitor){
        visitorServ.updateVisitor(visitor);
        return "edit";
    }

    @RequestMapping("regist.do")
    public String registVisitor(Visitor visitor){
        visitorServ.saveVisitor(visitor);
        return "edit";
    }

    @RequestMapping("findVisitor")
    public String findVisitor(Visitor visitor,HttpSession session,ModelMap model){
        visitor.setPassword(MD5.md5(visitor.getPassword()));
        Visitor visitor1=visitorServ.findVisitor(visitor.getName(),visitor.getPassword());
        Employee employee=emploServ.findEmploById(visitor1.getId());
        if(employee==null){
            List<Recruit> recruits=recruitServ.findAllRecruit();
            List<Feedback> feedbacks=feedbackServ.findFeedbackByVisitorIdAndStatus(visitor1.getId(),1);
            model.addAttribute("feedbacks",feedbacks);
            session.setAttribute("visitor",visitor1);
            session.setAttribute("recruits",recruits);
            return "visitor/visitorPage";
        }else{
            session.setAttribute("emplo",employee);
            if(employee.getRank()==1||employee.getRank()==2){
                List<Cultivate> cultivates=cultivateServ.findCultivateByDepartmentId(employee.getDepartmentId());
                List<Cultivate> cultivates1=new ArrayList<Cultivate>();
                Date date=new Date();
                SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
                String date2=dateFormat.format(date);
                for(Cultivate clt:cultivates){
                    if(dateFormat.format(clt.getCultivateTime()).compareToIgnoreCase(date2)>0){
                        cultivates1.add(clt);
                    }
                }
                model.addAttribute("cultivates",cultivates1);
                return "emplo/emploPage";
            }else {
                List<Candidate> candidates=candidateServ.findCandidateByStatus(1);
                List<PayObjection> payObjections=payObjectionServ.findPayObjectionByStatus(1);
                model.addAttribute("payObjections",payObjections);
                model.addAttribute("candidates",candidates);
                return "admin/adminPage";
            }
        }
    }

    @RequestMapping("loginVerify")
    @ResponseBody
    public String loginVerify(String name,String password){
        password=MD5.md5(password);
        Visitor visitor=visitorServ.findVisitor(name,password);
        if(visitor==null){
            if(name==""||password.equals("d41d8cd98f00b204e9800998ecf8427e")){
                return "123";
            }else {
                return "456";
            }
        }else {
            return "789";
        }
    }

    @RequestMapping("nameVerify")
    @ResponseBody
    public String nameVerify(String name){
        Visitor visitor=visitorServ.findVisitorByName(name);
        if(visitor==null){
            return "123";
        }else {
            return "456";
        }
    }

    @RequestMapping("psdVerify")
    @ResponseBody
    public String psdVerify(String name,String password){
        Visitor visitor=visitorServ.findVisitorByName(name);
        password=MD5.md5(password);
        if(visitor.getPassword().equals(password)){
            return "123";
        }else {
            return "456";
        }
    }

    @RequestMapping("visitor3")
    public String visitor3(){
        return "visitor/visitorPage";
    }

    @RequestMapping("visitor2")
    public String visitor2(int visitorId,ModelMap model){
        Resume resume=resumeServ.findResumeByVisitorId(visitorId);
        model.addAttribute("resume",resume);
        return "visitor/visitorPage2";
    }

    @RequestMapping("visitor4")
    public String visitor4(){
        return "visitor/visitorPage4";
    }

    @RequestMapping("visitor5")
    public String visitor5(){
        return "visitor/updatePassword";
    }

    @RequestMapping("visitor1")
    public String visitor1(int visitorId,ModelMap model){
        List<Feedback> feedbackList=feedbackServ.findFeedbackByVisitorId(visitorId);
        model.addAttribute("feedbackList",feedbackList);
        return "visitor/visitorPage1";
    }

    @RequestMapping("delFeekback")
    public String delFeekback(int id,int visitorId){
        feedbackServ.delFeedback(id);
        return "forward:/pages/visitor1";
    }
}

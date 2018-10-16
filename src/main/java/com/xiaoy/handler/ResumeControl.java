package com.xiaoy.handler;

import com.alibaba.fastjson.JSON;
import com.xiaoy.entity.Department;
import com.xiaoy.entity.Position;
import com.xiaoy.entity.Resume;
import com.xiaoy.service.DepartmentServ;
import com.xiaoy.service.PositionServ;
import com.xiaoy.service.ResumeServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/16.
 */
@Controller
@RequestMapping("pages")
public class ResumeControl {
    @Autowired
    private ResumeServ resumeServ;
    @Autowired
    private DepartmentServ departmentServ;
    @Autowired
    private PositionServ positionServ;

    @RequestMapping("addResume")
    public String addResume(int visitorId, ModelMap model){
        List<Department> departments=departmentServ.findAllDepartment();
        if(departments.size()!=0){
            List<Position> positionList=positionServ.findPositionByDepartmentId(departments.get(0).getId());
            model.addAttribute("positionList",positionList);
        }
        model.addAttribute("departments",departments);
        model.addAttribute("visitorId",visitorId);
        return "addResume";
    }

    @RequestMapping(value="departmentVerify",produces="application/json; charset=utf-8")
    @ResponseBody
    public String departmentVerify(int departmentId){
        List<Position> positions=positionServ.findPositionByDepartmentId(departmentId);
        String json= JSON.toJSONString(positions);
        return json;
    }

    @RequestMapping("resume.do")
    public String resume(Resume resume, HttpSession session){
        System.out.println(resume);
        resumeServ.saveResume(resume);
        return "visitorPage";
    }
}

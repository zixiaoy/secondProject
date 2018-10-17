package com.xiaoy.handler;

import com.xiaoy.entity.Feedback;
import com.xiaoy.entity.Recruit;
import com.xiaoy.entity.Resume;
import com.xiaoy.entity.Visitor;
import com.xiaoy.service.FeedbackServ;
import com.xiaoy.service.RecruitServ;
import com.xiaoy.service.ResumeServ;
import com.xiaoy.service.VisitorServ;
import com.xiaoy.util.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
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
    public String findVisitor(Visitor visitor,HttpSession session){
        visitor.setPassword(MD5.md5(visitor.getPassword()));
        Visitor visitor1=visitorServ.findVisitor(visitor.getName(),visitor.getPassword());
        List<Recruit> recruits=recruitServ.findAllRecruit();
        List<Feedback> feedbacks=feedbackServ.findFeedbackByVisitorIdAndStatus(visitor1.getId(),1);
        session.setAttribute("feedbacks",feedbacks);
        session.setAttribute("visitor",visitor1);
        session.setAttribute("recruits",recruits);
        return "visitorPage";
    }

    @RequestMapping("loginVerify")
    @ResponseBody
    public String loginVerify(String name,String password){
        password=MD5.md5(password);
        Visitor visitor=visitorServ.findVisitor(name,password);
        if(visitor==null){
            if(name==""||password==""){
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
        return "visitorPage";
    }

    @RequestMapping("visitor2")
    public String visitor2(int visitorId,ModelMap model){
        Resume resume=resumeServ.findResumeByVisitorId(visitorId);
        model.addAttribute("resume",resume);
        return "visitorPage2";
    }

    @RequestMapping("visitor4")
    public String visitor4(){
        return "visitorPage4";
    }

    @RequestMapping("visitor5")
    public String visitor5(){
        return "resetPasswords";
    }

    @RequestMapping("visitor1")
    public String visitor1(int visitorId,ModelMap model){
        List<Feedback> feedbackList=feedbackServ.findFeedbackByVisitorId(visitorId);
        model.addAttribute("feedbackList",feedbackList);
        return "visitorPage1";
    }
}

package com.xiaoy.handler;

import com.xiaoy.entity.Visitor;
import com.xiaoy.service.VisitorServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by 紫青 on 2018/10/11.
 */
@Controller
@RequestMapping("pages")
public class VisitorControl {
    @Autowired
    private VisitorServ visitorServ;

    @RequestMapping("regist")
    public String regist(){
        return "regist";
    }

    @RequestMapping("regist.do")
    public String registVisitor(Visitor visitor){
        visitorServ.saveVisitor(visitor);
        return "forward:/pages/login.jsp";
    }

    @RequestMapping("findVisitor")
    public String findVisitor(Visitor visitor){
        Visitor visitor1=visitorServ.findVisitor(visitor.getName(),visitor.getPassword());
        if(visitor1!=null){
            System.out.println("you");
            return "";
        }else {
            System.out.println("wu");
            return "";
        }
    }

    @RequestMapping("loginVerify")
    @ResponseBody
    public String loginVerify(String name,String password){
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
}

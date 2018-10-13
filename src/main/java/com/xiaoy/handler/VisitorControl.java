package com.xiaoy.handler;

import com.xiaoy.entity.Visitor;
import com.xiaoy.service.VisitorServ;
import com.xiaoy.util.MD5;
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
    public String findVisitor(Visitor visitor){
        visitor.setPassword(MD5.md5(visitor.getPassword()));
        Visitor visitor1=visitorServ.findVisitor(visitor.getName(),visitor.getPassword());
        if(visitor1!=null){
            return "visitorPage";
        }else {
            return "visitorPage";
        }
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
}

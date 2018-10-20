package com.xiaoy.handler;

import com.xiaoy.entity.*;
import com.xiaoy.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/19.
 */
@Controller
@RequestMapping("pages")
public class EmploControl {
    @Autowired
    private CultivateServ cultivateServ;
    @Autowired
    private EmploServ emploServ;
    @Autowired
    private DepartmentServ departmentServ;
    @Autowired
    private PositionServ positionServ;
    @Autowired
    private PrizeInfoServ prizeInfoServ;
    @Autowired
    private ClockingInServ clockingInServ;
    @Autowired
    private PayServ payServ;
    @Autowired
    private PayObjectionServ payObjectionServ;

    @RequestMapping("emplo1")
    public String emplo1(int id, ModelMap model){
        Employee employee=emploServ.findEmploById(id);
        List<Cultivate> cultivateList=cultivateServ.findCultivateByDepartmentId(employee.getDepartmentId());
        model.addAttribute("cultivateList",cultivateList);
        return "emplo/emploPage1";
    }

    @RequestMapping("emplo2")
    public String emplo2(int id, ModelMap model){
        Employee employee=emploServ.findEmploById(id);
        Department department=departmentServ.findDepartmentById(employee.getDepartmentId());
        Position position=positionServ.findPositionById(employee.getPositionId());
        model.addAttribute("emplo",employee);
        model.addAttribute("department",department);
        model.addAttribute("position",position);
        return "emplo/emploPage2";
    }

    @RequestMapping("updateEmplo")
    public String updateEmplo(int id,int age,int tel,String email){
        emploServ.updateEmplo(id,age,tel,email);
        return "forward:/pages/emplo2";
    }

    @RequestMapping("emplo4")
    public String emplo4(int id, ModelMap model){
        List<ClockingIn> clockingInList=clockingInServ.findEmployeeId(id);
        model.addAttribute("clockingInList",clockingInList);
        return "emplo/emploPage4";
    }

    @RequestMapping("emplo5")
    public String emplo5(int id, ModelMap model){
        List<PrizeInfo> prizeInfoList=prizeInfoServ.findPrizeInfoByEmployeeId(id);
        model.addAttribute("prizeInfoList",prizeInfoList);
        return "emplo/emploPage5";
    }

    @RequestMapping("emplo6")
    public String emplo6(int id, ModelMap model){
        List<Pay> payList=payServ.findPayByEmployeeId(id);
        model.addAttribute("payList",payList);
        return "emplo/emploPage6";
    }

    @RequestMapping("addClockingIn")
    public String addClockingIn(int id,int num){
        Employee employee=emploServ.findEmploById(id);
        Date date=new Date();
        if(num>=0){
            prizeInfoServ.savePrizeInfo(new PrizeInfo(2,"迟到",20,date,employee.getDepartmentId(),employee.getPositionId(),id));
        }
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
        List<ClockingIn> clockingInList=clockingInServ.findClockingInByDate(dateFormat.format(date));
        if(clockingInList.size()==0){
            clockingInServ.saveClockingIn(new ClockingIn(date,null,employee.getDepartmentId(),employee.getPositionId(),id));
        }
        return "forward:/pages/emplo4";
    }

    @RequestMapping("updateClockingIn")
    public String updateClockingIn(int id){
        Employee employee=emploServ.findEmploById(id);
        Date date=new Date();
        SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
        List<ClockingIn> clockingInList=clockingInServ.findClockingInByDate(dateFormat.format(date));
        for(ClockingIn clockingIn:clockingInList){
            if(clockingIn.getClosingTime()==null){
                clockingInServ.updateClockingIn(clockingIn.getId(),date);
            }
        }
        return "forward:/pages/emplo4";
    }

    @RequestMapping("addPayObjection")
    public String addPayObjection(PayObjection payObjection){
        List<Pay> pays=payServ.findPayByEmployeeId(payObjection.getEmployeeId());
        payObjection.setPayId(pays.get(pays.size()-1).getId());
        payObjection.setStatus(1);
        if(payObjectionServ.findPayObjectionByPayId(payObjection.getPayId())==null){
            payObjectionServ.savaPayObjection(payObjection);
        }
        return "emplo/emploPage";
    }
}

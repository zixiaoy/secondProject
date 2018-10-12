package com.xiaoy.entity;

import java.util.Date;

/** 薪资
 * Created by 紫青 on 2018/10/12.
 */
public class Pay {
    private int id;
    private int payTime;//发薪日
    private double basePay;//基本工资
    private double performanceBonus;//绩效奖金
    private double overtimePay;//加班费
    private double prizePay;//奖惩费用
    private double socialSecurity;//社保
    private int employeeId;

    public Pay() {
    }

    public Pay(int id, int payTime, double basePay, double performanceBonus, double overtimePay, double prizePay, double socialSecurity, int employeeId) {
        this.id = id;
        this.payTime = payTime;
        this.basePay = basePay;
        this.performanceBonus = performanceBonus;
        this.overtimePay = overtimePay;
        this.prizePay = prizePay;
        this.socialSecurity = socialSecurity;
        this.employeeId = employeeId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPayTime() {
        return payTime;
    }

    public void setPayTime(int payTime) {
        this.payTime = payTime;
    }

    public double getBasePay() {
        return basePay;
    }

    public void setBasePay(double basePay) {
        this.basePay = basePay;
    }

    public double getPerformanceBonus() {
        return performanceBonus;
    }

    public void setPerformanceBonus(double performanceBonus) {
        this.performanceBonus = performanceBonus;
    }

    public double getOvertimePay() {
        return overtimePay;
    }

    public void setOvertimePay(double overtimePay) {
        this.overtimePay = overtimePay;
    }

    public double getPrizePay() {
        return prizePay;
    }

    public void setPrizePay(double prizePay) {
        this.prizePay = prizePay;
    }

    public double getSocialSecurity() {
        return socialSecurity;
    }

    public void setSocialSecurity(double socialSecurity) {
        this.socialSecurity = socialSecurity;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    @Override
    public String toString() {
        return "Pay{" +
                "id=" + id +
                ", payTime=" + payTime +
                ", basePay=" + basePay +
                ", performanceBonus=" + performanceBonus +
                ", overtimePay=" + overtimePay +
                ", prizePay=" + prizePay +
                ", socialSecurity=" + socialSecurity +
                ", employeeId=" + employeeId +
                '}';
    }
}

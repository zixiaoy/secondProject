package com.xiaoy.entity;

import java.util.Date;

/** 奖惩
 * Created by 紫青 on 2018/10/12.
 */
public class PrizeInfo {
    private int id;
    private int name;// 1 奖  2 惩
    private String cause;//原因
    private int money;//奖惩金额
    private Date creaTime;//创建时间
    private int departmentId;//被奖惩者部门id
    private int positionId;//被奖惩者职位id
    private int employeeId;//被奖惩者id

    public PrizeInfo() {
    }

    public PrizeInfo(int name, String cause, int money, Date creaTime, int departmentId, int positionId, int employeeId) {
        this.name = name;
        this.cause = cause;
        this.money = money;
        this.creaTime = creaTime;
        this.departmentId = departmentId;
        this.positionId = positionId;
        this.employeeId = employeeId;
    }

    public PrizeInfo(int id, int name, String cause, int money, Date creaTime, int departmentId, int positionId, int employeeId) {
        this.id = id;
        this.name = name;
        this.cause = cause;
        this.money = money;
        this.creaTime = creaTime;
        this.departmentId = departmentId;
        this.positionId = positionId;
        this.employeeId = employeeId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getName() {
        return name;
    }

    public void setName(int name) {
        this.name = name;
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public Date getCreaTime() {
        return creaTime;
    }

    public void setCreaTime(Date creaTime) {
        this.creaTime = creaTime;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public int getPositionId() {
        return positionId;
    }

    public void setPositionId(int positionId) {
        this.positionId = positionId;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    @Override
    public String toString() {
        return "PrizeInfo{" +
                "id=" + id +
                ", name=" + name +
                ", cause='" + cause + '\'' +
                ", money=" + money +
                ", creaTime=" + creaTime +
                ", departmentId=" + departmentId +
                ", positionId=" + positionId +
                ", employeeId=" + employeeId +
                '}';
    }
}

package com.xiaoy.entity;

import java.util.Date;

/** 员工
 * Created by 紫青 on 2018/10/12.
 */
public class Employee {
    private int id;
    private String name;
    private String password;
    private int rank;//等级 1 试用期  2 正式员工  3 部门主管  4 总经理  5 离职
    private Date creaTime;//入职时间
    private int departmentId;//部门id
    private int positionId;//职位id

    public Employee() {
    }

    public Employee(int id, String name, String password, int rank, Date creaTime, int departmentId, int positionId) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.rank = rank;
        this.creaTime = creaTime;
        this.departmentId = departmentId;
        this.positionId = positionId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
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

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", rank=" + rank +
                ", creaTime=" + creaTime +
                ", departmentId=" + departmentId +
                ", positionId=" + positionId +
                '}';
    }
}

package com.xiaoy.entity;

import java.util.Date;

/** 职位
 * Created by 紫青 on 2018/10/12.
 */
public class Position {
    private int id;
    private String name;
    private Date creaTime;
    private int departmentId;//部门id

    public Position() {
    }

    public Position(String name, Date creaTime, int departmentId) {
        this.name = name;
        this.creaTime = creaTime;
        this.departmentId = departmentId;
    }

    public Position(int id, String name, Date creaTime, int departmentId) {
        this.id = id;
        this.name = name;
        this.creaTime = creaTime;
        this.departmentId = departmentId;
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

    @Override
    public String toString() {
        return "Position{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", creaTime=" + creaTime +
                ", departmentId=" + departmentId +
                '}';
    }
}

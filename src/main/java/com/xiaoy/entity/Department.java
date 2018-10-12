package com.xiaoy.entity;

import java.util.Date;

/** 部门
 * Created by 紫青 on 2018/10/12.
 */
public class Department {
    private int id;
    private String name;
    private Date creaTime;

    public Department() {
    }

    public Department(int id, String name, Date creaTime) {
        this.id = id;
        this.name = name;
        this.creaTime = creaTime;
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

    @Override
    public String toString() {
        return "Department{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", creaTime=" + creaTime +
                '}';
    }
}

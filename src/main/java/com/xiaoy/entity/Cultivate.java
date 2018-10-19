package com.xiaoy.entity;

import java.util.Date;

/** 培训
 * Created by 紫青 on 2018/10/12.
 */
public class Cultivate {
    private int id;
    private String name;
    private Date creaTime;//创建时间
    private Date cultivateTime;//培训时间
    private int departmentId;//部门id

    public Cultivate() {
    }

    public Cultivate(int id, String name, Date creaTime, Date cultivateTime, int departmentId) {
        this.id = id;
        this.name = name;
        this.creaTime = creaTime;
        this.cultivateTime = cultivateTime;
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

    public Date getCultivateTime() {
        return cultivateTime;
    }

    public void setCultivateTime(Date cultivateTime) {
        this.cultivateTime = cultivateTime;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    @Override
    public String toString() {
        return "Cultivate{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", creaTime=" + creaTime +
                ", cultivateTime=" + cultivateTime +
                ", departmentId=" + departmentId +
                '}';
    }
}

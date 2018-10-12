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
    private int positionId;//职位id
    private int employeeId;//员工id

    public Cultivate() {
    }

    public Cultivate(int id, String name, Date creaTime, Date cultivateTime, int departmentId, int positionId, int employeeId) {
        this.id = id;
        this.name = name;
        this.creaTime = creaTime;
        this.cultivateTime = cultivateTime;
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
        return "Cultivate{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", creaTime=" + creaTime +
                ", cultivateTime=" + cultivateTime +
                ", departmentId=" + departmentId +
                ", positionId=" + positionId +
                ", employeeId=" + employeeId +
                '}';
    }
}

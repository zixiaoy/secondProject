package com.xiaoy.entity;

import java.util.Date;

/** 考勤
 * Created by 紫青 on 2018/10/12.
 */
public class ClockingIn {
    private int id;
    private Date businessHours;//上班打卡时间
    private Date closingTime;//下班打卡时间
    private int departmentId;//部门id
    private int positionId;//职位id
    private int employeeId;

    public ClockingIn() {
    }

    public ClockingIn(Date businessHours, Date closingTime, int departmentId, int positionId, int employeeId) {
        this.businessHours = businessHours;
        this.closingTime = closingTime;
        this.departmentId = departmentId;
        this.positionId = positionId;
        this.employeeId = employeeId;
    }

    public ClockingIn(int id, Date businessHours, Date closingTime, int departmentId, int positionId, int employeeId) {
        this.id = id;
        this.businessHours = businessHours;
        this.closingTime = closingTime;
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

    public Date getBusinessHours() {
        return businessHours;
    }

    public void setBusinessHours(Date businessHours) {
        this.businessHours = businessHours;
    }

    public Date getClosingTime() {
        return closingTime;
    }

    public void setClosingTime(Date closingTime) {
        this.closingTime = closingTime;
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
        return "ClockingIn{" +
                "id=" + id +
                ", businessHours=" + businessHours +
                ", closingTime=" + closingTime +
                ", departmentId=" + departmentId +
                ", positionId=" + positionId +
                ", employeeId=" + employeeId +
                '}';
    }
}

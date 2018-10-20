package com.xiaoy.service;

import com.xiaoy.entity.ClockingIn;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
public interface ClockingInServ {
    public boolean saveClockingIn(ClockingIn clockingIn);
    public boolean updateClockingIn(int id, Date closingTime);
    public List<ClockingIn> findDepartmentId(int departmentId);
    public List<ClockingIn> findPositionId(int positionId);
    public List<ClockingIn> findEmployeeId(int employeeId);
    public List<ClockingIn> findClockingInByDate(String date);
    public List<ClockingIn> findClockingInByDateAndEmploId(String date,int employeeId);
}

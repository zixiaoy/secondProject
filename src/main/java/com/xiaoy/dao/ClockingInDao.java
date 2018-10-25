package com.xiaoy.dao;

import com.xiaoy.entity.ClockingIn;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
@Repository
public interface ClockingInDao {
    public boolean saveClockingIn(ClockingIn clockingIn);
    public boolean updateClockingIn(int id,Date closingTime);
    public List<ClockingIn> findEmployeeId(int employeeId);
    public List<ClockingIn> findClockingInByDate(String date);
    public List<ClockingIn> findClockingInByDateAndEmploId(String date,int employeeId);
}

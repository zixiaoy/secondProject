package com.xiaoy.service.impl;

import com.xiaoy.dao.ClockingInDao;
import com.xiaoy.entity.ClockingIn;
import com.xiaoy.service.ClockingInServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
@Service
public class ClockingInServImpl implements ClockingInServ {
    @Autowired
    private ClockingInDao clockingInDao;

    public boolean saveClockingIn(ClockingIn clockingIn) {
        return clockingInDao.saveClockingIn(clockingIn);
    }

    public boolean updateClockingIn(int id, Date closingTime) {
        return clockingInDao.updateClockingIn(id, closingTime);
    }

    public List<ClockingIn> findEmployeeId(int employeeId) {
        return clockingInDao.findEmployeeId(employeeId);
    }

    public List<ClockingIn> findClockingInByDate(String date) {
        return clockingInDao.findClockingInByDate(date);
    }

    public List<ClockingIn> findClockingInByDateAndEmploId(String date, int employeeId) {
        return clockingInDao.findClockingInByDateAndEmploId(date, employeeId);
    }
}

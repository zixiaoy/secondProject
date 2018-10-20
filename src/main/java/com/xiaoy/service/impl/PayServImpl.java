package com.xiaoy.service.impl;

import com.xiaoy.dao.PayDao;
import com.xiaoy.entity.Pay;
import com.xiaoy.service.PayServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
@Service
public class PayServImpl implements PayServ {
    @Autowired
    private PayDao payDao;

    public boolean savePay(Pay pay) {
        return payDao.savePay(pay);
    }

    public List<Pay> findPayByEmployeeId(int employeeId) {
        return payDao.findPayByEmployeeId(employeeId);
    }

    public List<Pay> findPayByPayTime(String payTime) {
        return payDao.findPayByPayTime(payTime);
    }

    public List<Pay> findPayByPayTimeAndEmployeeId(String payTime, int employeeId) {
        return payDao.findPayByPayTimeAndEmployeeId(payTime, employeeId);
    }

    public List<Pay> findAllPay() {
        return payDao.findAllPay();
    }
}

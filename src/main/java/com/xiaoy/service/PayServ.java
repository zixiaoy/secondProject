package com.xiaoy.service;

import com.xiaoy.entity.Pay;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
public interface PayServ {
    public boolean savePay(Pay pay);
    public List<Pay> findPayByEmployeeId(int employeeId);
    public List<Pay> findPayByPayTime(String payTime);
    public List<Pay> findPayByPayTimeAndEmployeeId(String payTime,int employeeId);
    public List<Pay> findAllPay();
    public Pay findPayById(int id);
}

package com.xiaoy.service.impl;

import com.xiaoy.dao.PayObjectionDao;
import com.xiaoy.entity.PayObjection;
import com.xiaoy.service.PayObjectionServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/20.
 */
@Service
public class PayObjectionServImpl implements PayObjectionServ {
    @Autowired
    private PayObjectionDao payObjectionDao;

    public boolean savaPayObjection(PayObjection payObjection) {
        return payObjectionDao.savaPayObjection(payObjection);
    }

    public boolean updatePayObjection(int id, int status) {
        return payObjectionDao.updatePayObjection(id, status);
    }

    public List<PayObjection> findAllPayObjection() {
        return payObjectionDao.findAllPayObjection();
    }

    public List<PayObjection> findPayObjectionByStatus(int status) {
        return payObjectionDao.findPayObjectionByStatus(status);
    }

    public PayObjection findPayObjectionByPayId(int payId){
        return payObjectionDao.findPayObjectionByPayId(payId);
    }
}

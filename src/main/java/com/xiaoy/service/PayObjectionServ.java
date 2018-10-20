package com.xiaoy.service;

import com.xiaoy.entity.PayObjection;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/20.
 */
public interface PayObjectionServ {
    public boolean savaPayObjection(PayObjection payObjection);
    public boolean updatePayObjection(int id, int status);
    public List<PayObjection> findAllPayObjection();
    public List<PayObjection> findPayObjectionByStatus(int status);
    public PayObjection findPayObjectionByPayId(int payId);
}

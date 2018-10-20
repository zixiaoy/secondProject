package com.xiaoy.dao;

import com.xiaoy.entity.PayObjection;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/20.
 */
@Repository
public interface PayObjectionDao {
    public boolean savaPayObjection(PayObjection payObjection);
    public boolean updatePayObjection(int id,int status);
    public List<PayObjection> findAllPayObjection();
    public List<PayObjection> findPayObjectionByStatus(int status);
    public PayObjection findPayObjectionByPayId(int payId);
}

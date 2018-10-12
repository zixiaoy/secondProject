package com.xiaoy.dao;

import com.xiaoy.entity.Pay;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
@Repository
public interface PayDao {
    public boolean savePay(Pay pay);
    public List<Pay> findPayByEmployeeId(int employeeId);
    public List<Pay> findAllPay();
}

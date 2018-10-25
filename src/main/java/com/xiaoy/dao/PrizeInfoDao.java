package com.xiaoy.dao;

import com.xiaoy.entity.PrizeInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
@Repository
public interface PrizeInfoDao {
    public boolean savePrizeInfo(PrizeInfo prizeInfo);
    public boolean delPrizeInfo(int id);
    public boolean updatePrizeInfo(int id,String cause);
    public List<PrizeInfo> findPrizeInfoByDepartmentId(int departmentId);
    public List<PrizeInfo> findPrizeInfoByEmployeeId(int employeeId);
    public List<PrizeInfo> findPrizeInfoByCreaTime(String creatime,int employeeId);
    public List<PrizeInfo> findAllPrizeInfo();
}

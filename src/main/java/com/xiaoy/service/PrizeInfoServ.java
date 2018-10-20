package com.xiaoy.service;

import com.xiaoy.entity.PrizeInfo;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
public interface PrizeInfoServ {
    public boolean savePrizeInfo(PrizeInfo prizeInfo);
    public boolean delPrizeInfo(int id);
    public boolean updatePrizeInfo(int id, String cause);
    public List<PrizeInfo> findPrizeInfoByDepartmentId(int departmentId);
    public List<PrizeInfo> findPrizeInfoByPositionId(int positionId);
    public List<PrizeInfo> findPrizeInfoByEmployeeId(int employeeId);
    public List<PrizeInfo> findPrizeInfoByCreaTime(String creatime,int employeeId);
    public List<PrizeInfo> findAllPrizeInfo();
}

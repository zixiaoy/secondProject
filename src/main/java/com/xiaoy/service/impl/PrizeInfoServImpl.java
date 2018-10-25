package com.xiaoy.service.impl;

import com.xiaoy.dao.PrizeInfoDao;
import com.xiaoy.entity.PrizeInfo;
import com.xiaoy.service.PrizeInfoServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
@Service
public class PrizeInfoServImpl implements PrizeInfoServ {
    @Autowired
    private PrizeInfoDao prizeInfoDao;

    public boolean savePrizeInfo(PrizeInfo prizeInfo) {
        return prizeInfoDao.savePrizeInfo(prizeInfo);
    }

    public boolean delPrizeInfo(int id) {
        return prizeInfoDao.delPrizeInfo(id);
    }

    public boolean updatePrizeInfo(int id, String cause) {
        return prizeInfoDao.updatePrizeInfo(id, cause);
    }

    public List<PrizeInfo> findPrizeInfoByDepartmentId(int departmentId) {
        return prizeInfoDao.findPrizeInfoByDepartmentId(departmentId);
    }

    public List<PrizeInfo> findPrizeInfoByEmployeeId(int employeeId) {
        return prizeInfoDao.findPrizeInfoByEmployeeId(employeeId);
    }

    public List<PrizeInfo> findPrizeInfoByCreaTime(String creatime, int employeeId) {
        return prizeInfoDao.findPrizeInfoByCreaTime(creatime, employeeId);
    }

    public List<PrizeInfo> findAllPrizeInfo() {
        return prizeInfoDao.findAllPrizeInfo();
    }
}

package com.xiaoy.service.impl;

import com.xiaoy.dao.CultivateDao;
import com.xiaoy.entity.Cultivate;
import com.xiaoy.service.CultivateServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
@Service
public class CultivateServImpl implements CultivateServ{
    @Autowired
    private CultivateDao cultivateDao;

    public boolean saveCultivate(Cultivate cultivate) {
        return cultivateDao.saveCultivate(cultivate);
    }

    public boolean updateCultivate(Cultivate cultivate) {
        return cultivateDao.updateCultivate(cultivate);
    }

    public boolean delCultivate(int id) {
        return cultivateDao.delCultivate(id);
    }

    public Cultivate findCultivateById(int id) {
        return cultivateDao.findCultivateById(id);
    }

    public List<Cultivate> findCultivateByDepartmentId(int departmentId) {
        return cultivateDao.findCultivateByDepartmentId(departmentId);
    }

    public List<Cultivate> findCultivateByPositionId(int positionId) {
        return cultivateDao.findCultivateByPositionId(positionId);
    }

    public List<Cultivate> findCultivateByEmployeeId(int employeeId) {
        return cultivateDao.findCultivateByEmployeeId(employeeId);
    }

    public List<Cultivate> findCultivateByCultivateTime(Date cultivateTime) {
        return cultivateDao.findCultivateByCultivateTime(cultivateTime);
    }
}

package com.xiaoy.service;

import com.xiaoy.entity.Cultivate;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
public interface CultivateServ {
    public boolean saveCultivate(Cultivate cultivate);
    public boolean updateCultivate(Cultivate cultivate);
    public boolean delCultivate(int id);
    public Cultivate findCultivateById(int id);
    public List<Cultivate> findCultivateByDepartmentId(int departmentId);
    public List<Cultivate> findCultivateByPositionId(int positionId);
    public List<Cultivate> findCultivateByEmployeeId(int employeeId);
    public List<Cultivate> findCultivateByCultivateTime(Date cultivateTime);
}

package com.xiaoy.service.impl;

import com.xiaoy.dao.PositionDao;
import com.xiaoy.entity.Position;
import com.xiaoy.service.PositionServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
@Service
public class PositionServImpl implements PositionServ {
    @Autowired
    private PositionDao positionDao;

    public boolean savePosition(Position position) {
        return positionDao.savePosition(position);
    }

    public boolean delPosition(int id) {
        return positionDao.delPosition(id);
    }

    public Position findPositionById(int id) {
        return positionDao.findPositionById(id);
    }

    public Position findPositionByName(int departmentId,String name) {
        return positionDao.findPositionByName(departmentId,name);
    }

    public List<Position> findPositionByDepartmentId(int departmentId) {
        return positionDao.findPositionByDepartmentId(departmentId);
    }

    public List<Position> findAllPosition() {
        return positionDao.findAllPosition();
    }
}

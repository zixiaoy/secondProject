package com.xiaoy.dao;

import com.xiaoy.entity.Position;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
@Repository
public interface PositionDao {
    public boolean savePosition(Position position);
    public boolean updatePosition(int id,String name);
    public boolean delPosition(int id);
    public Position findPositionById(int id);
    public Position findPositionByName(int departmentId,String name);
    public List<Position> findPositionByDepartmentId(int departmentId);
    public List<Position> findAllPosition();
}

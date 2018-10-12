package com.xiaoy.dao;

import com.xiaoy.entity.Department;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
@Repository
public interface DepartmentDao {
    public boolean saveDepartment(Department department);
    public boolean updateDepartment(int id,String name);
    public boolean delDepartment(int id);
    public Department findDepartmentById(int id);
    public List<Department> findAllDepartment();
    public Department findDepartmentByName(String name);
}

package com.xiaoy.service.impl;

import com.xiaoy.dao.DepartmentDao;
import com.xiaoy.entity.Department;
import com.xiaoy.service.DepartmentServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
@Service
public class DepartmentServImpl implements DepartmentServ {
    @Autowired
    private DepartmentDao departmentDao;

    public boolean saveDepartment(Department department) {
        return departmentDao.saveDepartment(department);
    }

    public boolean updateDepartment(int id, String name) {
        return departmentDao.updateDepartment(id, name);
    }

    public boolean delDepartment(int id) {
        return departmentDao.delDepartment(id);
    }

    public Department findDepartmentById(int id) {
        return departmentDao.findDepartmentById(id);
    }

    public List<Department> findAllDepartment() {
        return departmentDao.findAllDepartment();
    }

    public Department findDepartmentByName(String name) {
        return departmentDao.findDepartmentByName(name);
    }
}

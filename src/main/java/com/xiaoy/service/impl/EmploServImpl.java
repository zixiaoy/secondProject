package com.xiaoy.service.impl;

import com.xiaoy.dao.EmploDao;
import com.xiaoy.entity.Employee;
import com.xiaoy.service.EmploServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
@Service
public class EmploServImpl implements EmploServ {
    @Autowired
    private EmploDao emploDao;

    public boolean saveEmplo(Employee employee) {
        return emploDao.saveEmplo(employee);
    }

    public boolean updateEmploByPassword(int id, String password) {
        return emploDao.updateEmploByPassword(id, password);
    }

    public boolean updateEmploByRank(int id, int rank) {
        return emploDao.updateEmploByRank(id, rank);
    }

    public boolean updateEmploByPosition(int id, int departmentId, int positionId) {
        return emploDao.updateEmploByPosition(id, departmentId, positionId);
    }

    public Employee findEmplo(String name, String password) {
        return emploDao.findEmplo(name, password);
    }

    public Employee findEmploById(int id) {
        return emploDao.findEmploById(id);
    }

    public List<Employee> findEmploByDepartmentId(int departmentId) {
        return emploDao.findEmploByDepartmentId(departmentId);
    }

    public List<Employee> findEmploByPositionId(int positionId) {
        return emploDao.findEmploByPositionId(positionId);
    }

    public List<Employee> findAllEmplo() {
        return emploDao.findAllEmplo();
    }

    public boolean delEmplo(int id) {
        return emploDao.delEmplo(id);
    }

    public Employee findEmploByName(String name) {
        return emploDao.findEmploByName(name);
    }
}

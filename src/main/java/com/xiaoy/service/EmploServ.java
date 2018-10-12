package com.xiaoy.service;

import com.xiaoy.entity.Employee;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
public interface EmploServ {
    public boolean saveEmplo(Employee employee);
    public boolean updateEmploByPassword(int id, String password);
    public boolean updateEmploByRank(int id, int rank);
    public boolean updateEmploByPosition(int id, int departmentId, int positionId);
    public Employee findEmplo(String name, String password);
    public Employee findEmploById(int id);
    public List<Employee> findEmploByDepartmentId(int departmentId);
    public List<Employee> findEmploByPositionId(int positionId);
    public List<Employee> findAllEmplo();
    public boolean delEmplo(int id);
    public Employee findEmploByName(String name);
}

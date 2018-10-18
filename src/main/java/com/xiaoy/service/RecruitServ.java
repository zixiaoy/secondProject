package com.xiaoy.service;

import com.xiaoy.entity.Recruit;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
public interface RecruitServ {
    public boolean saveRecruit(Recruit recruit);
    public boolean updateRecruit(Recruit recruit);
    public boolean delRecruit(int id);
    public List<Recruit> findRecruitByDepartmentId(int departmentId);
    public Recruit findRecruitByPositionId(int positionId);
    public List<Recruit> findRecruitByCompanyAddress(String companyAddress);
    public List<Recruit> findAllRecruit();
}

package com.xiaoy.service.impl;

import com.xiaoy.dao.RecruitDao;
import com.xiaoy.entity.Recruit;
import com.xiaoy.service.RecruitServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
@Service
public class RecruitServImpl implements RecruitServ {
    @Autowired
    private RecruitDao recruitDao;

    public boolean saveRecruit(Recruit recruit) {
        return recruitDao.saveRecruit(recruit);
    }

    public boolean updateRecruit(Recruit recruit) {
        return recruitDao.updateRecruit(recruit);
    }

    public boolean delRecruit(int id) {
        return recruitDao.delRecruit(id);
    }

    public List<Recruit> findRecruitByDepartmentId(int departmentId) {
        return recruitDao.findRecruitByDepartmentId(departmentId);
    }

    public List<Recruit> findRecruitByPositionId(int positionId) {
        return recruitDao.findRecruitByPositionId(positionId);
    }

    public List<Recruit> findRecruitByCompanyAddress(String companyAddress) {
        return recruitDao.findRecruitByCompanyAddress(companyAddress);
    }

    public List<Recruit> findAllRecruit() {
        return recruitDao.findAllRecruit();
    }
}

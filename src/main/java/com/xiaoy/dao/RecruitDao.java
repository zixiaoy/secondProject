package com.xiaoy.dao;

import com.xiaoy.entity.Recruit;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
@Repository
public interface RecruitDao {
    public boolean saveRecruit(Recruit recruit);
    public boolean updateRecruit(Recruit recruit);
    public boolean delRecruit(int id);
    public List<Recruit> findRecruitByDepartmentId(int departmentId);
    public List<Recruit> findRecruitByPositionId(int positionId);
    public List<Recruit> findRecruitByCompanyAddress(String companyAddress);
    public List<Recruit> findAllRecruit();
}

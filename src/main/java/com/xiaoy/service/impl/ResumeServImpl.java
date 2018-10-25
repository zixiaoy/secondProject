package com.xiaoy.service.impl;

import com.xiaoy.dao.ResumeDao;
import com.xiaoy.entity.Resume;
import com.xiaoy.service.ResumeServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
@Service
public class ResumeServImpl implements ResumeServ {
    @Autowired
    private ResumeDao resumeDao;

    public boolean saveResume(Resume resume) {
        return resumeDao.saveResume(resume);
    }

    public boolean updateResume(Resume resume) {
        return resumeDao.updateResume(resume);
    }

    public Resume findResumeByVisitorId(int visitorId) {
        return resumeDao.findResumeByVisitorId(visitorId);
    }

}

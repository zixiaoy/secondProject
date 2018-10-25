package com.xiaoy.service;

import com.xiaoy.entity.Resume;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
public interface ResumeServ {
    public boolean saveResume(Resume resume);
    public boolean updateResume(Resume resume);
    public Resume findResumeByVisitorId(int visitorId);
}

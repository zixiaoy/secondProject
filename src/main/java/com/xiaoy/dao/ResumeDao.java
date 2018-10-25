package com.xiaoy.dao;

import com.xiaoy.entity.Resume;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/12.
 */
@Repository
public interface ResumeDao {
    public boolean saveResume(Resume resume);
    public boolean updateResume(Resume resume);
    public Resume findResumeByVisitorId(int visitorId);
}

package com.xiaoy.dao;

import com.xiaoy.entity.Candidate;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
@Repository
public interface CandidateDao {
    public boolean saveCandidate(Candidate candidate);
    public boolean updateCandidate(int id,int status,int interview);
    public boolean delCandidate(int id);
    public Candidate findCandidateByVisitorId(int visitorId);
    public List<Candidate> findCandidateByStatus(int status);
    public List<Candidate> findCandidateAll();
}

package com.xiaoy.dao;

import com.xiaoy.entity.Candidate;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
public interface CandidateDao {
    public boolean saveCandidate(Candidate candidate);
    public boolean dalCandidate(int id);
    public List<Candidate> findCandidateByStatus(int status);
    public List<Candidate> findCandidateByInterview(int interview);
    public List<Candidate> findCandidateByCreaTime(Date creaTime);
    public List<Candidate> findCandidateAll();
}

package com.xiaoy.service.impl;

import com.xiaoy.dao.CandidateDao;
import com.xiaoy.entity.Candidate;
import com.xiaoy.service.CandidateServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
@Service
public class CandidateServImpl implements CandidateServ{
    @Autowired
    private CandidateDao candidateDao;

    public boolean saveCandidate(Candidate candidate) {
        return candidateDao.saveCandidate(candidate);
    }

    public boolean updateCandidate(int id, int status, int interview) {
        return candidateDao.updateCandidate(id, status, interview);
    }

    public boolean delCandidate(int id) {
        return candidateDao.delCandidate(id);
    }

    public Candidate findCandidateByVisitorId(int visitorId) {
        return candidateDao.findCandidateByVisitorId(visitorId);
    }

    public List<Candidate> findCandidateByStatus(int status) {
        return candidateDao.findCandidateByStatus(status);
    }

    public List<Candidate> findCandidateByInterview(int interview) {
        return candidateDao.findCandidateByInterview(interview);
    }

    public List<Candidate> findCandidateByCreaTime(Date creaTime) {
        return candidateDao.findCandidateByCreaTime(creaTime);
    }

    public List<Candidate> findCandidateAll() {
        return candidateDao.findCandidateAll();
    }
}

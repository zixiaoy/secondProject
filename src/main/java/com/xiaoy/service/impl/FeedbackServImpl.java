package com.xiaoy.service.impl;

import com.xiaoy.dao.FeedbackDao;
import com.xiaoy.entity.Feedback;
import com.xiaoy.service.FeedbackServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
@Service
public class FeedbackServImpl implements FeedbackServ {
    @Autowired
    private FeedbackDao feedbackDao;

    public boolean saveFeedback(Feedback feedback) {
        return feedbackDao.saveFeedback(feedback);
    }

    public boolean updateFeedback(int id, int status, int interview, int admit) {
        return feedbackDao.updateFeedback(id, status, interview, admit);
    }

    public boolean delFeedback(int id) {
        return feedbackDao.delFeedback(id);
    }

    public List<Feedback> findFeedbackByStatus(int status) {
        return feedbackDao.findFeedbackByStatus(status);
    }

    public List<Feedback> findFeedbackByInterview(int interview) {
        return feedbackDao.findFeedbackByInterview(interview);
    }

    public List<Feedback> findFeedbackByAdmit(int admit) {
        return feedbackDao.findFeedbackByAdmit(admit);
    }

    public List<Feedback> findFeedbackByCreaTime(Date creaTime) {
        return feedbackDao.findFeedbackByCreaTime(creaTime);
    }

    public List<Feedback> findFeedbackByInterviewTime(Date interviewTime) {
        return feedbackDao.findFeedbackByInterviewTime(interviewTime);
    }

    public List<Feedback> findFeedbackAll() {
        return feedbackDao.findFeedbackAll();
    }

    public List<Feedback> findFeedbackByVisitorId(int visitorId) {
        return feedbackDao.findFeedbackByVisitorId(visitorId);
    }

    public List<Feedback> findFeedbackByVisitorIdAndStatus(int visitorId, int status) {
        return feedbackDao.findFeedbackByVisitorIdAndStatus(visitorId, status);
    }
}

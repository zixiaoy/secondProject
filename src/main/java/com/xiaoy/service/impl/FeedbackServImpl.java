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

    public List<Feedback> findFeedbackByInterview(int interview) {
        return feedbackDao.findFeedbackByInterview(interview);
    }

    public List<Feedback> findFeedbackByInterviewTime(String interviewTime,int visitorId) {
        return feedbackDao.findFeedbackByInterviewTime(interviewTime,visitorId);
    }

    public List<Feedback> findFeedbackByVisitorId(int visitorId) {
        return feedbackDao.findFeedbackByVisitorId(visitorId);
    }

    public List<Feedback> findFeedbackByVisitorIdAndStatus(int visitorId, int status) {
        return feedbackDao.findFeedbackByVisitorIdAndStatus(visitorId, status);
    }
}

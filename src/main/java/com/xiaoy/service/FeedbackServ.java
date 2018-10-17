package com.xiaoy.service;

import com.xiaoy.entity.Feedback;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
public interface FeedbackServ {
    public boolean saveFeedback(Feedback feedback);
    public boolean updateFeedback(int id, int status, int interview, int admit);
    public boolean delFeedback(int id);
    public List<Feedback> findFeedbackByStatus(int status);
    public List<Feedback> findFeedbackByInterview(int interview);
    public List<Feedback> findFeedbackByAdmit(int admit);
    public List<Feedback> findFeedbackByCreaTime(Date creaTime);
    public List<Feedback> findFeedbackByInterviewTime(Date interviewTime);
    public List<Feedback> findFeedbackAll();
    public List<Feedback> findFeedbackByVisitorId(int visitorId);
    public List<Feedback> findFeedbackByVisitorIdAndStatus(int visitorId,int status);
}

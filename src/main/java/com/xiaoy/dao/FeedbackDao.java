package com.xiaoy.dao;

import com.xiaoy.entity.Feedback;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * Created by 紫青 on 2018/10/13.
 */
@Repository
public interface FeedbackDao {
    public boolean saveFeedback(Feedback feedback);
    public boolean updateFeedback(int id,int status,int interview,int admit);
    public boolean delFeedback(int id);
    public List<Feedback> findFeedbackByInterview(int interview);
    public List<Feedback> findFeedbackByInterviewTime(String interviewTime,int visitorId);
    public List<Feedback> findFeedbackByVisitorId(int visitorId);
    public List<Feedback> findFeedbackByVisitorIdAndStatus(int visitorId,int status);
}

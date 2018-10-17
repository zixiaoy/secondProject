package com.xiaoy.entity;

import java.util.Date;

/** 反馈
 * Created by 紫青 on 2018/10/12.
 */
public class Feedback {
    private int id;
    private int recruitId;//投递的公司
    private Date creaTime;//投递时间
    private int status;//查看状态 1 未查看 2 已查看
    private int interview;//是否面试 1 面试 2 放弃
    private Date interviewTime;// 面试时间
    private int admit;//是否被录取 1 录取 2 未录取
    private int visitorId;

    public Feedback() {
    }

    public Feedback(int recruitId, Date creaTime, int status, int interview, Date interviewTime, int admit, int visitorId) {
        this.recruitId = recruitId;
        this.creaTime = creaTime;
        this.status = status;
        this.interview = interview;
        this.interviewTime = interviewTime;
        this.admit = admit;
        this.visitorId = visitorId;
    }

    public Feedback(int id, int recruitId, Date creaTime, int status, int interview, Date interviewTime, int admit, int visitorId) {
        this.id = id;
        this.recruitId = recruitId;
        this.creaTime = creaTime;
        this.status = status;
        this.interview = interview;
        this.interviewTime = interviewTime;
        this.admit = admit;
        this.visitorId = visitorId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRecruitId() {
        return recruitId;
    }

    public void setRecruitId(int recruitId) {
        this.recruitId = recruitId;
    }

    public Date getCreaTime() {
        return creaTime;
    }

    public void setCreaTime(Date creaTime) {
        this.creaTime = creaTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getInterview() {
        return interview;
    }

    public void setInterview(int interview) {
        this.interview = interview;
    }

    public Date getInterviewTime() {
        return interviewTime;
    }

    public void setInterviewTime(Date interviewTime) {
        this.interviewTime = interviewTime;
    }

    public int getAdmit() {
        return admit;
    }

    public void setAdmit(int admit) {
        this.admit = admit;
    }

    public int getVisitorId() {
        return visitorId;
    }

    public void setVisitorId(int visitorId) {
        this.visitorId = visitorId;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "id=" + id +
                ", recruitId=" + recruitId +
                ", creaTime=" + creaTime +
                ", status=" + status +
                ", interview=" + interview +
                ", interviewTime=" + interviewTime +
                ", admit=" + admit +
                ", visitorId=" + visitorId +
                '}';
    }
}

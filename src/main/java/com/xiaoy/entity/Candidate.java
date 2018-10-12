package com.xiaoy.entity;

import java.util.Date;

/** 应聘
 * Created by 紫青 on 2018/10/12.
 */
public class Candidate {
    private int id;
    private int visitorId;
    private Date creaTime;//投递时间
    private int status;//查看状态 1 未查看 2 已查看
    private int interview;//面试状态 1 未面试 2 已面试

    public Candidate() {
    }

    public Candidate(int id, int visitorId, Date creaTime, int status, int interview) {
        this.id = id;
        this.visitorId = visitorId;
        this.creaTime = creaTime;
        this.status = status;
        this.interview = interview;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVisitorId() {
        return visitorId;
    }

    public void setVisitorId(int visitorId) {
        this.visitorId = visitorId;
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

    @Override
    public String toString() {
        return "Candidate{" +
                "id=" + id +
                ", visitorId=" + visitorId +
                ", creaTime=" + creaTime +
                ", status=" + status +
                ", interview=" + interview +
                '}';
    }
}

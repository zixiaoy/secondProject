package com.xiaoy.entity;

/** 薪资异议
 * Created by 紫青 on 2018/10/20.
 */
public class PayObjection {
    private int id;
    private String cause;
    private int money;
    private int status;//1 未查看 2 已查看
    private int payId;
    private int employeeId;

    public PayObjection() {
    }

    public PayObjection(int id, String cause, int money, int status, int payId, int employeeId) {
        this.id = id;
        this.cause = cause;
        this.money = money;
        this.status = status;
        this.payId = payId;
        this.employeeId = employeeId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getPayId() {
        return payId;
    }

    public void setPayId(int payId) {
        this.payId = payId;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    @Override
    public String toString() {
        return "PayObjection{" +
                "id=" + id +
                ", cause='" + cause + '\'' +
                ", money=" + money +
                ", status=" + status +
                ", payId=" + payId +
                ", employeeId=" + employeeId +
                '}';
    }
}

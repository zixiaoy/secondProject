package com.xiaoy.entity;

import java.util.Date;

/** 员工
 * Created by 紫青 on 2018/10/12.
 */
public class Employee {
    private int id;
    private String name;
    private int age;
    private int sex;
    private int tel;
    private String education;
    private String email;
    private int rank;//等级 1 试用期  2 正式员工  3 部门主管  4 总经理  5 离职
    private Date creaTime;//入职时间
    private int basePay;
    private int departmentId;//部门id
    private int positionId;//职位id

    public Employee() {
    }

    public Employee(int id, String name, int age, int sex, int tel, String education, String email, int rank, Date creaTime, int basePay, int departmentId, int positionId) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.tel = tel;
        this.education = education;
        this.email = email;
        this.rank = rank;
        this.creaTime = creaTime;
        this.basePay = basePay;
        this.departmentId = departmentId;
        this.positionId = positionId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public Date getCreaTime() {
        return creaTime;
    }

    public void setCreaTime(Date creaTime) {
        this.creaTime = creaTime;
    }

    public int getBasePay() {
        return basePay;
    }

    public void setBasePay(int basePay) {
        this.basePay = basePay;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public int getPositionId() {
        return positionId;
    }

    public void setPositionId(int positionId) {
        this.positionId = positionId;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", tel=" + tel +
                ", education='" + education + '\'' +
                ", email='" + email + '\'' +
                ", rank=" + rank +
                ", creaTime=" + creaTime +
                ", basePay=" + basePay +
                ", departmentId=" + departmentId +
                ", positionId=" + positionId +
                '}';
    }
}

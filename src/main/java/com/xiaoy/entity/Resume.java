package com.xiaoy.entity;

/** 简历
 * Created by 紫青 on 2018/10/12.
 */
public class Resume {
    private int id;
    private String name;
    private int age;
    private int sex;
    private String edcuation;//学历
    private int tel;//电话
    private String email;//邮箱
    private String politicsStatus;//政治面貌
    private int departmentId;//部门id
    private int positionId;//职位id
    private String expectSalary;//期望薪资
    private String experience;//工作经历
    private String address;//居住地址
    private String interest;//兴趣爱好
    private String speciality;//特长
    private String intro;//个人简介
    private int visitorId;

    public Resume() {
    }

    public Resume(int id, String name, int age, int sex, String edcuation, int tel, String email, String politicsStatus, int departmentId, int positionId, String expectSalary, String experience, String address, String interest, String speciality, String intro, int visitorId) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.edcuation = edcuation;
        this.tel = tel;
        this.email = email;
        this.politicsStatus = politicsStatus;
        this.departmentId = departmentId;
        this.positionId = positionId;
        this.expectSalary = expectSalary;
        this.experience = experience;
        this.address = address;
        this.interest = interest;
        this.speciality = speciality;
        this.intro = intro;
        this.visitorId = visitorId;
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

    public String getEdcuation() {
        return edcuation;
    }

    public void setEdcuation(String edcuation) {
        this.edcuation = edcuation;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPoliticsStatus() {
        return politicsStatus;
    }

    public void setPoliticsStatus(String politicsStatus) {
        this.politicsStatus = politicsStatus;
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

    public String getExpectSalary() {
        return expectSalary;
    }

    public void setExpectSalary(String expectSalary) {
        this.expectSalary = expectSalary;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getInterest() {
        return interest;
    }

    public void setInterest(String interest) {
        this.interest = interest;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public int getVisitorId() {
        return visitorId;
    }

    public void setVisitorId(int visitorId) {
        this.visitorId = visitorId;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", sex=" + sex +
                ", edcuation='" + edcuation + '\'' +
                ", tel=" + tel +
                ", email='" + email + '\'' +
                ", politicsStatus='" + politicsStatus + '\'' +
                ", departmentId=" + departmentId +
                ", positionId=" + positionId +
                ", expectSalary='" + expectSalary + '\'' +
                ", experience='" + experience + '\'' +
                ", address='" + address + '\'' +
                ", interest='" + interest + '\'' +
                ", speciality='" + speciality + '\'' +
                ", intro='" + intro + '\'' +
                ", visitorId=" + visitorId +
                '}';
    }
}

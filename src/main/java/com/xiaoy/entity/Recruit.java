package com.xiaoy.entity;

/** 招聘
 * Created by 紫青 on 2018/10/12.
 */
public class Recruit {
    private int id;
    private String companyName;
    private String companyAddress;
    private int departmentId;
    private int positionId;
    private String basePay;//基本薪资区间
    private String intro;//岗位职责

    public Recruit() {
    }

    public Recruit(int id, String companyName, String companyAddress, int departmentId, int positionId, String basePay, String intro) {
        this.id = id;
        this.companyName = companyName;
        this.companyAddress = companyAddress;
        this.departmentId = departmentId;
        this.positionId = positionId;
        this.basePay = basePay;
        this.intro = intro;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
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

    public String getBasePay() {
        return basePay;
    }

    public void setBasePay(String basePay) {
        this.basePay = basePay;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    @Override
    public String toString() {
        return "Recruit{" +
                "id=" + id +
                ", companyName='" + companyName + '\'' +
                ", companyAddress='" + companyAddress + '\'' +
                ", departmentId=" + departmentId +
                ", positionId=" + positionId +
                ", basePay='" + basePay + '\'' +
                ", intro='" + intro + '\'' +
                '}';
    }
}

package com.xiaoy.entity;

/** 游客
 * Created by 紫青 on 2018/10/11.
 */
public class Visitor {
    private int id;
    private String name;
    private String password;
    private int rank;//等级 0 游客

    public Visitor() {
    }

    public Visitor(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public Visitor(int id, String name, String password, int rank) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.rank = rank;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    @Override
    public String toString() {
        return "Visitor{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", rank=" + rank +
                '}';
    }
}

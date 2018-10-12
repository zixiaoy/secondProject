package com.xiaoy.service;

import com.xiaoy.entity.Visitor;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/11.
 */
public interface VisitorServ {
    public boolean saveVisitor(Visitor visitor);
    public Visitor findVisitor(String name,String password);
    public List<Visitor> findAllVisitor();
    public Visitor findVisitorByName(String name);
}

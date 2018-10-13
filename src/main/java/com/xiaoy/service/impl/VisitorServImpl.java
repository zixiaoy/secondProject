package com.xiaoy.service.impl;

import com.xiaoy.dao.VisitorDao;
import com.xiaoy.entity.Visitor;
import com.xiaoy.service.VisitorServ;
import com.xiaoy.util.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/11.
 */
@Service
public class VisitorServImpl implements VisitorServ {
    @Autowired
    private VisitorDao visitorDao;

    public boolean saveVisitor(Visitor visitor) {
        visitor.setPassword(MD5.md5(visitor.getPassword()));
        return visitorDao.saveVisitor(visitor);
    }

    public boolean updateVisitor(Visitor visitor) {
        visitor.setPassword(MD5.md5(visitor.getPassword()));
        return visitorDao.updateVisitor(visitor);
    }

    public boolean delVisitor(int id) {
        return visitorDao.delVisitor(id);
    }

    public Visitor findVisitor(String name, String password) {
        return visitorDao.findVisitor(name,password);
    }

    public List<Visitor> findAllVisitor() {
        return visitorDao.findAllVisitor();
    }

    public Visitor findVisitorByName(String name) {
        return visitorDao.findVisitorByName(name);
    }
}

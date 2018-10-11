package com.xiaoy.service.impl;

import com.xiaoy.dao.VisitorDao;
import com.xiaoy.entity.Visitor;
import com.xiaoy.service.VisitorServ;
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
        return visitorDao.saveVisitor(visitor);
    }

    public Visitor findVisitor(String name,String password) {
        return visitorDao.findVisitor(name,password);
    }

    public List<Visitor> findAllVisitor() {
        return visitorDao.findAllVisitor();
    }
}

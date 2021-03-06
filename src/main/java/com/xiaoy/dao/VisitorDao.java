package com.xiaoy.dao;

import com.xiaoy.entity.Visitor;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 紫青 on 2018/10/11.
 */
@Repository
public interface VisitorDao {
    public boolean saveVisitor(Visitor visitor);
    public Visitor findVisitor(String name,String password);
    public List<Visitor> findAllVisitor();
}

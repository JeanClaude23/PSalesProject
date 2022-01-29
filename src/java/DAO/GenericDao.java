/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Category;
import Util.HibernateUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author JClaude
 */
public class GenericDao<K> {
    Session session =null;
    private final Class<K> type;

    public GenericDao(Class<K> type) {
        this.type = type;
    }
    public Session createSession()
    {
        session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        return session;
    }
    public void closeSession(){
        session.getTransaction().commit();
        session.close();
    }
    
    
    public void save(K obj){
        createSession().saveOrUpdate(obj);
        closeSession();
    }
    
    public void update(K obj){
        createSession().update(obj);
        closeSession();
    }
    public void delete(K obj){
        createSession().delete(obj);
        closeSession();
    }
    
    public K  findById(Serializable id){
        K obj = (K) createSession().get(type, id);
        closeSession();
        return obj;
    }

    public List<K>  findAll(){
        List<K> obj = createSession().createCriteria(type.getName()).list();
        closeSession();
        return obj;
    }
    public List<Category> retrieveAll() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Category> categorylist = new ArrayList();
        categorylist = session.createQuery("from Category").list();
        session.close();
        return categorylist;
    }
}

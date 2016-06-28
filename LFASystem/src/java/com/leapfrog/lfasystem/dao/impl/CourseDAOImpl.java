/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfasystem.dao.impl;

import com.leapfrog.lfasystem.dao.CourseDAO;
import com.leapfrog.lfasystem.entity.Courses;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Navin
 */
public class CourseDAOImpl implements CourseDAO {

    EntityManagerFactory emf;
    EntityManager em;
    EntityTransaction trans;

    public CourseDAOImpl() {
        emf = Persistence.createEntityManagerFactory("LFAJAX_PU");
        em = emf.createEntityManager();

    }

    @Override
    public List<Courses> getAll() {
        Query query = em.createNamedQuery("SELECT c from Courses c");
        return query.getResultList();
    }

    @Override
    public Courses getById(int id) {
        return em.find(Courses.class, id);
    }

    @Override
    public int insert(Courses c) {
        trans = em.getTransaction();
        trans.begin();
        em.persist(c);
        em.flush();
        trans.commit();
        return c.getId();
    }

    @Override
    public int update(Courses c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Courses> search(String param) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

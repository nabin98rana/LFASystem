/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfasystem.dao.impl;

import com.leapfrog.lfasystem.dao.EnquiryDAO;
import com.leapfrog.lfasystem.entity.Enquiry;
import java.util.ArrayList;
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
public class EnquiryDAOImpl implements EnquiryDAO {

    EntityManagerFactory emf;
    EntityManager em;
    EntityTransaction trans;

    public EnquiryDAOImpl() {
        emf = Persistence.createEntityManagerFactory("LFAJAX_PU");
        em = emf.createEntityManager();
    }

    @Override
    public List<Enquiry> getAll() {
       Query query=em.createNamedQuery("SELECT e from Enquiry e");
       return query.getResultList();
    }

    @Override
    public Enquiry getById(int id) {
        return em.find(Enquiry.class, id);
    }

    @Override
    public int insert(Enquiry c) {
        trans = em.getTransaction();
        trans.begin();
        em.persist(c);
        em.flush();
        trans.commit();
        return c.getId();
    }

    @Override
    public int update(Enquiry c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Enquiry> search(String param) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

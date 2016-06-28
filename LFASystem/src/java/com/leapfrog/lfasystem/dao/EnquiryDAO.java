/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfasystem.dao;

import com.leapfrog.lfasystem.entity.Enquiry;
import java.util.List;

/**
 *
 * @author Navin
 */
public interface EnquiryDAO {

    List<Enquiry> getAll();

    Enquiry getById(int id);

    int insert(Enquiry c);

    int update(Enquiry c);

    int delete(int id);

    List<Enquiry> search(String param);
}

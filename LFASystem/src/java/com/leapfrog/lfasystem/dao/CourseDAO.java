/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfasystem.dao;

import com.leapfrog.lfasystem.entity.Courses;
import java.util.List;

/**
 *
 * @author Navin
 */
public interface CourseDAO {

    List<Courses> getAll();

    Courses getById(int id);

    int insert(Courses c);

    int update(Courses c);

    int delete(int id);

    List<Courses> search(String param);
}

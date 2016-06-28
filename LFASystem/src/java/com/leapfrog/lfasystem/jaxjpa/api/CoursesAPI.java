/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfasystem.jaxjpa.api;

import com.leapfrog.lfasystem.dao.CourseDAO;
import com.leapfrog.lfasystem.dao.impl.CourseDAOImpl;
import com.leapfrog.lfasystem.entity.Courses;
import java.util.List;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.jboss.logging.Param;

/**
 * REST Web Service
 *
 * @author Navin
 */
@Path(value = "courses")
public class CoursesAPI {

    private CourseDAO courseDAO = new CourseDAOImpl();

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Courses> index() {
        return courseDAO.getAll();
    }

    @Path("/{id}")
    @GET
    public Courses getById(@PathParam("id") int id) {
        return courseDAO.getById(id);
    }
}

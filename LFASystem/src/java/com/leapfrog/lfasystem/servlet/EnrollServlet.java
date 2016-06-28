/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.lfasystem.servlet;

import com.leapfrog.lfasystem.controller.Controller;
import com.leapfrog.lfasystem.dao.EnquiryDAO;
import com.leapfrog.lfasystem.dao.impl.EnquiryDAOImpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Navin
 */
@WebServlet(name = "enrollController", urlPatterns = {"/enroll"})
public class EnrollServlet extends Controller {

    EnquiryDAO enquiryDAO = new EnquiryDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse respone) throws ServletException, IOException {
        String viewPage = "/WEB-INF/enroll/login.jsp";
        request.setAttribute("enquiries", enquiryDAO.getAll());
        request.getRequestDispatcher("/WEB-INF/enroll/enroll.jsp").forward(request, respone);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}

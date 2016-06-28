<%-- 
    Document   : courseview
    Created on : Jun 28, 2016, 7:07:31 PM
    Author     : Navin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../shared/header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/foundation.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        

<section class="section_inside">
    <div class="row">
        <div class="column large-10 medium-12">
        <h2 class="bold">Enroll Now</h2>
       




<form action="/enroll" method="post" accept-charset="utf-8" name="iiForm" id="iiForm" data-abide="">

<div class="row">
<input type="hidden" name="submiitedform" value="yes">

  <div class="column medium-6">
    <label>First Name <input type="text" name="first_name" required="required"/>
    </label>
  </div>
  <div class="column medium-6">
    <label>Last Name <input type="text" name="last_name" required="required"/>
    </label>
  </div>  
  <div class="clearfix"></div>
  <div class="column medium-6">
    <label>Your Email Address <input type="email" name="email" placeholder="you@email.com"  required="required"/>
    </label>
  </div>
  <div class="column medium-6">
    <label>Your LinkedIn Profile Address <input type="url" placeholder="" name="linkedin"/>
    </label>
  </div>

  <div class="column medium-6">
    <label>Your Phone/Mobile Number<input type="number" name="contact_no" pattern="integer" required="required"/>
    </label>
  </div>

  <div class="column medium-6">
    <label>Your Desired Course Name 
      <select name="interested_course" id="interested_course" required>
      <option value="">Please select your course</option>
              <option value="1" selected>Foundation Core Java & Web Basics</option>
              <option value="2">Advance Java(J2EE)</option>
              <option value="3">Web Development with Python And Django</option>
              <option value="4">Data Science with Python</option>
              <option value="5">Android App Development</option>
              <option value="6">ASP.NET MVC</option>
              <option value="7">Front End Web Development</option>
              <option value="8">PHP & JS</option>
              <option value="9">Fundamental of Cyber Security</option>
              <option value="10">IOS App Development</option>
              <option value="11">Web Development with Ruby on Rails</option>
              <option value="12">MEAN Stack Development</option>
              <option value="13">Advance Spreadsheet and Data Presentation</option>
              <option value="14">Wordpress Development</option>
          </select></label>
  </div>


 <div class="clearfix"></div>
    
  
    <div class="column medium-6">
    <label>Prefered Timing<input type="number" name="timing" pattern="integer" required="required"/>
    </label>
  </div>
  
  <div class="column medium-6">
  <label>What best describes your current employment status?
  <select name="employment_status" required>
    <option value="">Please select employment status</option>
    <option value="Employed">Employed</option>
    <option value="Unemployed but not looking">Unemployed but not looking</option>
    <option value="Unemployed and looking for work">Unemployed and looking for work</option>
    <option value="Self-Employed (Freelancer)">Self-Employed (Freelancer)</option>
    <option value="Entrepreneur building/growing a business">Entrepreneur building/growing a business</option>
    <option value="Student">Student</option>
  </select></label>
  </div>

<div class="clearfix"></div>
  

  <div class="column medium-6"><br>
    <label class="label_head">Tick all boxes you have basic knowledge of</label>
    <label><input type="checkbox" name="knowledge[]" value="Python"> Python</label>
    <label><input type="checkbox" name="knowledge[]" value="PHP"> PHP</label>
    <label><input type="checkbox" name="knowledge[]" value="Java"> Java</label>
    <label><input type="checkbox" name="knowledge[]" value="Android"> Android</label>
    <label><input type="checkbox" name="knowledge[]" value="ASP.NET"> ASP.NET</label>
    <label><input type="checkbox" name="knowledge[]" value="Swift"> Swift</label>
    <br>
  </div>

  <div class="column medium-10 end">
    <label>Please describe <strong>in 200 words or less</strong>, why would you want to enroll in this course.
      <textarea rows="5" name="message" required></textarea></label>
  </div>

  <div class="column medium-6">
    <label>How did you hear about Leapfrog Academy? 
    <select name="reference" required>
    <option value="">Please select</option>
    <option value="Friends/Family">Friends/Family</option>
    <option value="Employer/Colleague">Employer/Colleague</option>
    <option value="Google or Other Search Engine">Google or Other Search Engine</option>
    <option value="Facebook/Twitter/Social Media">Facebook/Twitter/Social Media</option>
    <option value="Email/Newsletter Marketing">Email/Newsletter Marketing</option>
    <option value="Another Website/Blog">Another Website/Blog</option>
    <option value="News Article">News Article</option>
    <option value="Conference/Event/Meet-up">Conference/Event/Meet-up</option>
    <option value="Financing Partner">Financing Partner</option>
    <option value="LFA Student/Alumni">LFA Student/Alumni</option>
    <option value="Others">Others</option>
    </select></label>
  </div>


  <div class="column medium-8 end">
    <input type="submit" id="send_button" name="submitform" class="button radius" value="Submit this Form">
    <span id="formtext"></span>
  </div>

</div>
</form>                </div>
    </div>
  </section>  
  <%@include file="../shared/footer.jsp" %>

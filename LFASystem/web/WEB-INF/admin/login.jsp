<%-- 
    Document   : login
    Created on : Jun 28, 2016, 5:06:58 PM
    Author     : Navin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../shared/header.jsp" %>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="../../assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../../assets/css/foundation.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div>
            <table class="table table-striped table-hover table-bordered">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Contact No</th>
                    <th>Employ Status</th>
                    <th>Timing</th>
                    <th>Message</th>
                    <th>Status</th>
                </tr>
                <c:forEach var="enquiry" items="${requestScope.enquiries}">
                    <tr>
                        <td>${enquiry.id}</td>
                        <td>${enquiry.firstName}</td>
                        <td>${enquiry.lastName}</td>
                        <td>${enquiry.email}</td>
                        <td>${enquiry.contactNo}</td>
                        <td>${enquiry.employStatus}</td>
                        <td>${enquiry.timing}</td>
                        <td>${enquiry.message}</td>
                        <td>Edit Delete</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <style type="text/css">
            .form-signin {
                max-width: 400px;
                padding: 19px 29px 29px;
                margin: 0 auto 20px;
                background-color: #fff;
                border: 1px solid #e5e5e5;
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
                border-radius: 5px;
                -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
            }
            .form-signin .form-signin-heading,
            .form-signin .checkbox {
                margin-bottom: 10px;
            }
            .form-signin input[type="text"],
            .form-signin input[type="password"] {
                font-size: 16px;
                height: auto;
                margin-bottom: 15px;
                padding: 7px 9px;
            }

        </style>

        <form action="" method="post" accept-charset="utf-8" class="form-signin">        <h2 class="form-signin-heading">Please sign in</h2>
            <input type="text" name="login_field" id="login_field" value="" class="input-block-level" placeholder="Username/Email">
            <input type="password" id="password" name="password" class="input-block-level" placeholder="Password">
            <label class="checkbox">
                <input type="checkbox" id="remember" name="remember" value="yes"/> Remember Me?
            </label>

            <button class="btn btn-large btn-primary" type="submit" name="submit" value="submit">Login</button> 
            <a href="forgotten_password" class="btn btn-large btn-danger">
                Forgotten Password            		</a>


        </form>

        <%@include file="../shared/footer.jsp" %>

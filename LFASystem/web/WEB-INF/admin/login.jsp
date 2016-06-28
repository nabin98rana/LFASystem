<%-- 
    Document   : login
    Created on : Jun 28, 2016, 5:06:58 PM
    Author     : Navin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="../../assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../../assets/css/foundation.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>


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

    </body>
</html>

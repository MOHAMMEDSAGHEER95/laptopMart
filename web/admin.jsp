<%-- 
    Document   : admin
    Created on : Jan 25, 2018, 9:31:48 AM
    Author     : NB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
                background-color: #96D828 ;
                font-family: "WildWest", Times, serif;

            }
            
            
            #header{
                color: white;
                background-color: black;
                text-align: center;
                height: 150px;
                width:100%;
                margin-bottom: 20px;
                
                
                
            }
            #main{
                
                background-color: white;
                width:100%;
               
                
                height:700px;
                
            }
        </style>
    </head>
    <body>
         <div id="header">
                
             <a href="index.html"> <img style="display: inline;" src="Laptop mart.png" width="150" height="150" align="left" alt="logo" /></a>
<h1 style="display: inline;margin-right: 160px;" >Laptop Mart</h1>
            </div>
        <div id="main" ">
            <div id="table" style="width: 400px; height: 400px;margin-left: 200px;border-style: solid;border-color: cornflowerblue;">
                <div id="inner" style="margin-top: 190px;margin-left: 50px">
                    <h2>Admin Login</h2>
                <form action="Logincontroller.jsp" method="GET">
                    Enter username :<input type="text"  placeholder="try 'admin'" onfocus="this.placeholder=''" name="username"> <br>
                    Enter password :<input type="password" name="password"><br>
                    <input type="submit" value="Login">

                </form>
            </div>
            </div>
        </div>
    </body>
</html>

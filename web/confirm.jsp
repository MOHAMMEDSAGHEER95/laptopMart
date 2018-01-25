<%-- 
    Document   : confirm
    Created on : Jan 24, 2018, 7:54:44 PM
    Author     : NB
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            #table{
                float:right;
                margin-right: 250px;
            }
            
        </style>
    </head>
    <body>
        <% String a=request.getParameter("email");
             String c=request.getParameter("fname");
               String d=request.getParameter("lname"); 
        %>
        
        
            <div id="header">
                
                <a href="index.html"><img style="display: inline;" src="Laptop mart.png" width="150" height="150" align="left" alt="logo" /></a>
<h1 style="display: inline;margin-right: 160px;" >Laptop Mart</h1>
            </div>
             <div id="main">
                 <h1 align="center">Thanku <%=c%> <%=d%>, your order is confirmed </h1>
                 <h3>we are processing your request once completed you will recieve an email to <%=a%>. </h3>
             
               <% String b=request.getParameter("product"); 
             
               String e=request.getParameter("dob"); 
               String f=request.getParameter("del"); 
               String g=request.getParameter("address"); 
               String h=request.getParameter("b");
               String i=request.getParameter("c");
               String j1=request.getParameter("d");
               int j=Integer.parseInt(j1);
              Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sagheer","root","root");
            Statement stmt=con.createStatement();
             String qr="insert into tbl_order(name,item,price,del,address,l_id) values('"+c+" "+d+"','"+h+" "+i+"','"+j+"','"+f+"','"+g+"','"+b+"')";
             System.out.println(qr);
             
             try
             {
                 stmt.executeUpdate(qr);
             }
             catch(Exception z)
             {
                 
             }
                       %>
               <%=b%>
                 <img src="images/<%=b%>.jpg" width="500" height="400" >
             
             <div id="table">
                 <h1>CUSTOMER INVOICE</h1>
                 <table cellspacing="20">
                     <tr>
                         <td>
                            Name: 
                         </td>
                         <td>
                         <%=c%> <%=d%>    
                         </td>
                     </tr>
                     <tr>
                         <td>
                             Item:
                         </td>
                         <td>
                             <%=h%> <%=i%>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             Price:
                         </td>
                         <td>
                             <%=j%> 
                         </td>
                     </tr>
                      <tr>
                         <td>
                             Date of delivery:
                         </td>
                         <td>
                             <%=f%> 
                         </td>
                     </tr>
                     <tr>
                         <td>
                             Address:
                         </td>
                         <td>
                             <%=g%> 
                         </td>
                     </tr>
                     <tr>
                         <td>
                             Date of Birth
                         </td>
                         <td>
                             <%=e%> 
                         </td>
                     </tr>
                 </table>
             </div>
             </div>
             
         
         
    </body>
</html>

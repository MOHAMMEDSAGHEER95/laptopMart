<%-- 
    Document   : orders
    Created on : Jan 25, 2018, 10:21:49 AM
    Author     : NB
--%>

<%@page import="java.sql.ResultSet"%>
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
                font-family: "Times New Roman", Times, serif;

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
                float:right;
                height:100%;
                
            }
            #table{
                
                    width: 350px;
            }
            #pic{
                float:left;;
                
            }
            
           
        </style>
    </head>
    <body>
        <div id="header">
                    <a href="index.html"><img style="display: inline;" src="Laptop mart.png" width="150" height="150" align="left" alt="logo" /></a>
                     <h1 style="display: inline;margin-right: 160px;" >Laptop Mart</h1>
                </div>
        <div id="main">
          <h1> ORDER DETAILS</h1>
       <%
           
             Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sagheer","root","root");
        Statement stmt=con.createStatement();
          
        String sql="select *from tbl_order";
        try
        {
            ResultSet rs= stmt.executeQuery(sql);
           
            while(rs.next())
            {
                %>
                 <div id="container">
              <div id="table">
                  <table border="1">
                      <tr>
                          <td width="300px">
                <table border="0" cellspacing="15">
                    <tr>
                        <td>
                           Order id
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <%=rs.getString(1)%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Name
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <%=rs.getString(2)%>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            ITEM
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <%=rs.getString(3)%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Date of delivery
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <%=rs.getString(5)%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           price
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <%=rs.getString(4)%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <%=rs.getString(6)%>
                        </td>
                    </tr>
                    
                </table>
                          </td>
                      </tr>
                      <tr>
                          <td width="300px" height="250px">
                        </div>
                        <div id="pic">
                            
                            <img src="images/<%=rs.getString(7)%>.jpg" alt="image" width="250" height="150">
                            
                        </div>
                 </td>
                 </tr>
                            </table>
                 </div>
        </div>
                      <%
                   
            }
        }
        catch(Exception e)
        {
            
        }
        
            %>
    </body>
</html>

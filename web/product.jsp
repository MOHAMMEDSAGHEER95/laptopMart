<%-- 
    Document   : product
    Created on : Jan 23, 2018, 4:58:21 PM
    Author     : NB
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product </title>
        <style>
             body
            {
                background-color: #96D828 ;
                font-family: "Times New Roman", Times, serif;

            }
            <% String x,y,z;%>
            #container{
           background-color: white;       
               
                
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
                height:700px;
                
            }
            #specs{
                float:right;
                
                margin-top: 5px;
                margin-right: 350px;
                
            }
            #name{
                margin-left: 30px;
                color: #1E8DFF;
                margin-top: 5px;
            }
            #form{
                margin-left: 90px;
            }
            h2{
                color:#BF2E5A;
            }
            .button{
                background-color: #FFBA1E;
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
            }
            
        </style>
    </head>
    <body>
       
        
            <div id="container">
                <div id="header">
                    <a href="index.html"><img style="display: inline;" src="Laptop mart.png" width="150" height="150" align="left" alt="logo" /></a>
                     <h1 style="display: inline;margin-right: 160px;" >Laptop Mart</h1>
                </div>
                <div id="main">
                    <% String a=request.getParameter("product"); %>
            <img src="images/<%=a%>.jpg" width="450" height="350" >
            
            <div id="specs">
                
            <%
           
             Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sagheer","root","root");
        Statement stmt=con.createStatement();
          
        String sql="select *from tbl_laptop where l_id='"+a+"'";
        try
        {
            ResultSet rs= stmt.executeQuery(sql);
           
            while(rs.next())
            {
                %>
                 <div id="name">
                            <h1 align="left" ><%=rs.getString(3) %> <%=rs.getString(9)%></h1>
                         
                        </div>
                <h1> Product Specification</h1>
                <table border="0" cellspacing="15">
                    <tr>
                        <td>
                            Brand
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
                            Model Name
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <%=rs.getString(9)%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Display
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <%=rs.getString(7)%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Processor
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
                           RAM 
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
                            Memory
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <%=rs.getString(6)%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Operating system
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <%=rs.getString(8)%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Price
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <h2>Rs <%=rs.getString(10)%></h2>
                        </td>
                    </tr>
                </table>
                        <% x=rs.getString(3);
                    y=rs.getString(9);
                    z=rs.getString(10);
                    %>
                        <div id="form">
                        <form action="checkout.jsp" method="post">
                            <input type="hidden" name="product" value=<%=a %> >
                             <input type="hidden" name="x" value=<%=x %> >
                              <input type="hidden" name="y" value=<%=y %> >
                              <input type="hidden" name="z" value=<%=z %> >
                            <input type="submit" class="button"  value="BUY NOW">
                        </form>
                            </div>
                          </div>
                       
                <%
                   
            }
        }
        catch(Exception e)
        {
            
        }
        
            %>
           
              
           
                </div>
            </div>
  
    </body>
</html>

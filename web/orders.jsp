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
    </head>
    <body>
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
                 
                <h1> ORDER DETAILS</h1>
                <table border="0" cellspacing="15">
                    <tr>
                        <td>
                            id
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
                      <%
                   
            }
        }
        catch(Exception e)
        {
            
        }
        
            %>
    </body>
</html>

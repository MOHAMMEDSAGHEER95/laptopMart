<%-- 
    Document   : Logincontroller
    Created on : Jan 25, 2018, 10:20:08 AM
    Author     : NB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String a,b;
            a=request.getParameter("username");
            b=request.getParameter("password");
            if(a.equals("admin") && b.equals("admin"))
            
		{
			//out.println("Welcome " + a + " <a href=\"orders.jsp\">click to see orders</a>");
                //session.setAttribute("username",a);
                    response.sendRedirect("http://localhost:8080/laptopMart/orders.jsp");
                    return;
		}
		else
		{
			response.sendRedirect("http://localhost:8080/laptopMart/error.jsp");
		}
	
            %>
    </body>
</html>

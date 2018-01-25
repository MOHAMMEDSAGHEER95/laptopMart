<%-- 
    Document   : checkout
    Created on : Jan 24, 2018, 5:16:34 PM
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
                font-family: "Times New Roman", Times, serif;

            }
            #container{
           background-color: white;       
               
                
            }
            #details{
                float:right;
                margin-right: 100px;
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
            h2{
                color:#1E8DFF;;
                margin-left: 170px;
            }
            input[type="text"] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                 box-sizing: border-box;
                border: 2px solid red;
                border-radius: 4px;
}
               input[type="date"] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                 box-sizing: border-box;
                border: 2px solid red;
                border-radius: 4px;
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
            .temp{
                font-size: 15px;
                
            }
            .a2{
                color: blue;
            }
        </style>
    </head>
    <body>
        <script>
            
            function validateForm() {
    var x = document.form.fname.value.length;
    var y = document.form.lname.value.length;
    
     var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 
     var z=document.form.del.value.length;
     var v=document.form.address.value.length;
     
    
    if (x == 0 || y == 0) {
        alert("Name must be filled out");
        return false;
    }
   
    if(!document.form.email.value.match(mailformat))
    {   alert("Invalid Email");
        return false;

            }
            if(z<1)
            {
                alert("please select a date of delivery"); 
                return false;
            }
             if(v<1)
            {
                alert("please enter address"); 
                return false;
            }
            if(v<10)
            {
                alert("please enter valid address"); 
                return false;
            }
        }
        </script>
        <% String a=request.getParameter("product"); 
           String b=request.getParameter("x"); 
           String c=request.getParameter("y"); 
            String d=request.getParameter("z"); 
        %>
        <div id="container">
                <div id="header">
                    <a href="index.html"><img style="display: inline;" src="Laptop mart.png" width="150" height="150" align="left" alt="logo" /></a>
                     <h1 style="display: inline;margin-right: 160px" >Laptop Mart</h1>
                </div>
            <div id="main">
                <h2  ><%=b %> <%=c%></h2>
                 <img src="images/<%=a%>.jpg" width="500" height="400" >
                 <div id="details">
                     
                     <form class="temp" name="form" onsubmit="return validateForm()" action="confirm.jsp"  method="post">
                         <input type="hidden" name="product" value=<%=a%> >
                         <input type="hidden" name="b" value=<%=b%> >
                          <input type="hidden" name="c" value=<%=c%> >
                          <input type="hidden" name="d" value=<%=d%> >
                         
                         <h1 class="a2">Input Personel Details</h1>
                         <table >
                             <tr>
                                 <td>
                                    First name: 
                                 </td>
                                 <td>
                                     <input type="text"  id="fname" name="fname" >
                                 </td>
                             </tr>
                               <tr>
                                 <td>
                                    Last name: 
                                 </td>
                                 <td>
                                     <input type="text" name="lname">
                                 </td>
                             </tr>
                              <tr>
                                 <td>
                                    Date Of Birth: 
                                 </td>
                                 <td>
                                     <input type="date" name="dob" data-date-format="DD MMMM YYYY" >
                                     
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                    Email ID
                                 </td>
                                 <td>
                                    <input type="text" name="email">
                                     
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                    Delivery Date: 
                                 </td>
                                 <td>
                                     <input type="date" name="del" data-date-format="DD MMMM YYYY" >
                                     
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                    Address
                                 </td>
                                 <td>
                                     <input type="text" name="address">
                                     
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <input type="submit" class="button" value="CONFIRM ORDER">
                                 </td>
                             </tr>
                         </table>
                         
                     </form>
                 </div>
                
            </div>
        </div>
        
    </body>
</html>

<%-- 
    Document   : Account
    Created on : Jun 17, 2019, 11:51:54 PM
    Author     : jitender singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header><h1 style="color: blue; font-family: arial; text-align: center;">Developer Account</h1></header>
        <nav>
          <!--  <a href="Addadmin.jsp">ADD ADMIN</a>
            
            <a href="Addtester.jsp">ADD TESTER</a>
          
            <a href="Adddeveloper.jsp">ADD DEVELOPER</a>-->
              <a href="Logout" style="float: right">LOGOUT</a>
            <ul>
            <li> <span class="fa fa-user" aria-hidden="true"></span><%="Welcome: "+ session.getAttribute("username")%></li>
            </ul>
        </nav>
    </body>
</html>

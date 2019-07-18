<%--
    Document   : ChangePass
    Created on : Jul 17, 2019, 2:59:18 PM
    Author     : jitender singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="dao.DBConnection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>change password from here....!</h1>
        <%
        String currentPassword=request.getParameter("current");
        String newPassword=request.getParameter("new");
        String confirmPassword=request.getParameter("confirm");
        Connection con=null;
String pass="";
int id=0;
try{

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from addtester where password='"+currentPassword+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(3);
} System.out.println(id+ " "+pass);
if(pass.equals(currentPassword)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update addtester set password='"+newPassword+"' where idaddtester='"+id+"'");
out.println("Password changed successfully");
st1.close();
con.close();
}
else{
out.println("Invalid Current Password");
}
}
catch(Exception e){
out.println(e);
}
%>
        
    </body>
</html>

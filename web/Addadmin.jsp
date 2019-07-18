<%-- 
    Document   : Addadmin
    Created on : Jul 9, 2019, 8:47:10 PM
    Author     : jitender singh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Tester</title>
    <link href="style_log.css" rel="stylesheet" type="text/css">
     
</head>
<body>
    
    
    <form class="modal-content animate" action="AddAdmin" method="POST">
         <!--   <div class="img_cont">
                <img src="acc.png" alt="Avatar" class="avatar">
            </div>
-->
    <div class="container">
        <table><tr><td>
       <!-- <h1>Login</h1>-->
        <label for="name"><b>NAME</b></label>
        <input type="text" placeholder="Enter name" name="name" required>
                </td></tr>
            <tr><td>
         <label for="email"><b>EMAIL</b></label>
        <input type="email" placeholder="Enter email" name="email" required>
</td></tr>
                <tr><td>
        <label for="psw"><b>PASSWORD</b></label>
        <input type="password" placeholder="Enter the password" name="psw" required>
        </td></tr>
                    <tr><td>
                            <button type="submit">Add Admin</button>
        </td></tr>
                      <!--  <tr><td>
        <label>
            <input type="checkbox" checked="checked" name="remember">Remember Me
        </label>
</td></tr>
    
    <div class="container" style="background-color: #f1f1f1;">
        <button type="button" class="cancel">CANCEL</button>
        <span class="psw">Forgot<a href="#">Password?</a> </span>-->
        </table>
    

    </div>
</form>
    <script src="script_log.js" type="text/javascript" ></script>
</body>
</html>


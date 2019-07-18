<%-- 
    Document   : index
    Created on : Jun 16, 2019, 1:47:38 PM
    Author     : jitender singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <style>
            
            
            /* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5px auto; /* 15% from the top and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
  /* Position it in the top right corner outside of the modal */
  position: absolute;
  right: 25px;
  top: 0; 
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

/* Close button on hover */
.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}

@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}
        </style>
        <script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
    </head>
    <body>
        <header>
            <h1 style="color:navy; text-align: center; font-family: algerian;">Bug Tracking Site...</h1>
        </header>
        <!--<nav>
            <a href="#">HOME</a>
            <a href="Register.jsp">REGISTER</a>
            <a href="Login.jsp">Admin Login</a>
        </nav>-->
        <button onclick="document.getElementById('id01').style.display='block'"> Admin Login</button>

<!-- The Modal -->
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" 
class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
  <form class="modal-content animate" action="LoginController" method="POST">
   <!-- <div class="imgcontainer">
      <img src="accountlogin-icon.png" alt="Avatar" class="avatar">
    </div>-->

    <div class="container">
        <table><tr><td>
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>
                </td></tr><tr><td>
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pwd" required>
                </td></tr><tr><td>
                    <button type="submit">Login</button>&nbsp; &nbsp;
            <!--<tr><td>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label></td></tr>-->
     

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    </td></tr> 
 </table>
    </div><!-- <span class="psw">Forgot <a href="#">password?</a></span>-->
  
  </form>
  
</div>

    </body>
</html>

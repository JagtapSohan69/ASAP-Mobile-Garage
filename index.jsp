<!DOCTYPE html>
<html>
<style>
.bg{
background-image:url(wfs_lgn/bg1.jpg);
}
</style>
<head>

  <meta charset="UTF-8">

  <title> Secured Login</title>

    <link rel="stylesheet" href="./wfs_lgn/style.css" media="screen" type="text/css" />

</head>

<body class="bg">

  <div class="container">

  <div id="login-form">

    <h3>Secured Login</h3>

    <fieldset>

      <form action="logchk.jsp" method="Post">

        <input type="text" required name="uname" placeholder="Username"> 
        <input type="password" required name="pass" placeholder="Password"> 

        <input type="submit" name="submit" value="Login">

      </form>
</br>
<div align="center"> <a style="color:#333333" href="vendor_regf.jsp">Vendor Register</a> | <a style="color:#333333" href="cust_regf.jsp">Customer Register</a></div>

</br>
<div align="center"><a style="color:#333333" href="fpass1.jsp">Forgot Password?</a> </div>
    </fieldset>
</br></br></br></br>

<!--<div align="center" style="color:#FFFFFF;">&copy;. All Rights Reserved. Design & Developed by- Akhilesh , Gourakka , Pramod , Rushikesh , Shivani</div>
 -->  </div> <!-- end login-form -->

</div>

</body>

</html>
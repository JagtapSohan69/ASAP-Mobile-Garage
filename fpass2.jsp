<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=request.getParameter("uname");
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"'");
if(rs.next())
{
%>
<!DOCTYPE html>
<html>
<style>
.bg{
background-image:url(wfs_lgn/bg1.jpg);
}
</style>
<head>

  <meta charset="UTF-8">

  <title> Forgot Password</title>

    <link rel="stylesheet" href="./wfs_lgn/style.css" media="screen" type="text/css" />

</head>

<body class="bg">

  <div class="container">

  <div id="login-form">

    <h3>Forgot Password</h3>

    <fieldset>

      <form action="fpass3.jsp" method="Post">
	  <input type="hidden" name="un" value="<%=un%>"/>
	  	<label style="color:#666666; font-size:16px">Security Question:</label>
		<input type="text" name="sq" required readonly="" style="width:100%" value="<%=rs.getString("s_question")%>"  class="text"><!-- <i class="icon user"></i> -->

       
					
						<input type="password" name="sa" required autofocus="on" placeholder="Answer"><i class="icon lock"></i>
					
					<div class="p-container">

        <input type="submit" name="submit" value="Next">
		<div class="clear"> </div>
		<div style="margin-top:20px; color:#333333" align="center">Remember Your Password? <a style="font-size:16px; color:#0066FF"  href="index.jsp">Login Here</a></div>
					</div>

      </form>
</br>

    </fieldset>
</br></br></br></br>

<div align="center" style="color:#FFFFFF;">&copy;. All Rights Reserved. Design & Developed by- Amit, Arbaz, Pratamesh and Somesh</div>
  </div> <!-- end login-form -->

</div>

</body>

</html>
<%
}
else
{
   out.println("<script>alert('Invalid Username');document.location='fpass1.jsp';</script>");
}
%>
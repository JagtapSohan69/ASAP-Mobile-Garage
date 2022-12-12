<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=request.getParameter("un");
String sq=request.getParameter("sq");
String sa=request.getParameter("sa");
ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and s_question='"+sq+"' and s_answer='"+sa+"'");
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

      <form action="logchk.jsp" method="Post">
	
					<label style="color:#666666; font-size:16px">Username:</label>
						<input type="text" name="uname" required readonly="" style="width:100%" value="<%=rs.getString("username")%>"  class="text">
					
					</br></br>
					
					<label style="color:#666666; font-size:16px">Your Password:</label>
					
						<input type="text" name="pass" required readonly="" value="<%=rs.getString("password")%>"><i class="icon lock"></i>
					
					<div class="p-container">
								
								<input type="submit" name="submit" value="Login" >
							<div class="clear"> </div>
							<div style="margin-top:20px; color:#993300" align="center">Note: Change your password after login to your account..!</div>
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
   out.println("<script>alert('Invalid Answer');history.back();</script>");
}
%>
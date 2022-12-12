<title>Validating...</title>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=request.getParameter("uname");
String ps=request.getParameter("pass");

ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and password='"+ps+"' and status='active'");
if(rs.next())
{
    String utp=rs.getString("utype");
	session.setAttribute("uname",un);
	if(utp.equals("admin"))
	{
	   response.sendRedirect("admin/home.jsp");
	}
	else if(utp.equals("customer"))
	{
	   response.sendRedirect("customer/home.jsp");
	}
	else if(utp.equals("vendor"))
	{
	   response.sendRedirect("vendor/home.jsp");
	}
}
else
{
  out.println("<script>alert('Invalid Username or Password');document.location='index.jsp';</script>");
}
%>
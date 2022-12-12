<title>Processing</title>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String rz=session.getAttribute("uname").toString();
int z=s.stm.executeUpdate("update feedback_details set status='Seen' where fd_to='"+rz+"'");
response.sendRedirect("feedback_details_view.jsp");
%>
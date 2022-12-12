<title>Processing</title>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String rz=session.getAttribute("uname").toString();
int z=s.stm.executeUpdate("update notices n,vendor_details v set n.n_status='Seen' where n.n_to=v.v_id and v.v_email='"+rz+"'");
response.sendRedirect("notices_view.jsp");
%>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("gid");
String b=request.getParameter("sn");
String c=request.getParameter("sd");
String d=request.getParameter("sp");
int z=s.stm.executeUpdate("insert into services values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
%>
<script>
alert("Servies Details Added Successfully");
document.location="services_view.jsp";
</script>
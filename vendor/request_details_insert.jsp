<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("cid");
String b=request.getParameter("clt");
String c=request.getParameter("clg");
String d=request.getParameter("gid");
String e=request.getParameter("rd");
String f=request.getParameter("rt");
String g=request.getParameter("rs");
int z=s.stm.executeUpdate("insert into request_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')");
%>
<script>
alert("Request Details Added Successfully");
document.location="request_details_view.jsp";
</script>
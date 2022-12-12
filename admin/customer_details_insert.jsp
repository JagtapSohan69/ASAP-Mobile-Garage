<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("fn");
String b=request.getParameter("ln");
String c=request.getParameter("mn");
String d=request.getParameter("em");
String e=request.getParameter("dob");
String f=request.getParameter("ct");
String g=request.getParameter("pp");
int z=s.stm.executeUpdate("insert into customer_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')");
%>
<script>
alert("Customer Details Added Successfully");
document.location="customer_details_view.jsp";
</script>
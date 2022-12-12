<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("fn");
String b=request.getParameter("ln");
String c=request.getParameter("mn");
String d=request.getParameter("amn");
String e=request.getParameter("em");
String f=request.getParameter("pp");
int z=s.stm.executeUpdate("insert into vendor_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
%>
<script>
alert("Vendor Details Added Successfully");
document.location="vendor_details_view.jsp";
</script>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("gid");
String b=request.getParameter("cid");
String c=request.getParameter("ba");
String d=request.getParameter("bd");
String e=request.getParameter("s");
int z=s.stm.executeUpdate("insert into bill_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
%>
<script>
alert("Bill Details Added Successfully");
document.location="bill_details_view.jsp";
</script>
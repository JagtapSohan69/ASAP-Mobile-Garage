<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("vid");
String b=request.getParameter("gn");
String c=request.getParameter("gd");
String d=request.getParameter("gc");
String e=request.getParameter("ga");
//String f=request.getParameter("glt");
//String g=request.getParameter("glg");
String h=request.getParameter("gs");
int z=s.stm.executeUpdate("insert into garage_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','-','-','"+h+"')");
%>
<script>
alert("Garage Details Added Successfully");
document.location="garage_details_view.jsp";
</script>
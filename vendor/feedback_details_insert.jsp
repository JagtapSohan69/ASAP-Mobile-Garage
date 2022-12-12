<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("fdf");
String b=request.getParameter("fdt");
String c=request.getParameter("fdm");
String d=request.getParameter("sd");
String e=request.getParameter("st");
int z=s.stm.executeUpdate("insert into feedback_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
%>
<script>
alert("Feedback Details Added Successfully");
document.location="feedback_details_view.jsp";
</script>
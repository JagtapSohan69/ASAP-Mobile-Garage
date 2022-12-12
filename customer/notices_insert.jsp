<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("nt");
String b=request.getParameter("n");
String c=request.getParameter("nd");
String d=request.getParameter("ns");
int z=s.stm.executeUpdate("insert into notices values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
%>
<script>
alert("Notice Details Added Successfully");
document.location="notices_view.jsp";
</script>
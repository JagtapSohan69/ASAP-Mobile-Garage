<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");

int z=s.stm.executeUpdate("delete from services where s_id='"+a+"'");
%>
<script>
alert("Services Deleted Successfully");
document.location="services_view.jsp";
</script>

<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");

int z=s.stm.executeUpdate("delete from garage_details where g_id='"+a+"'");
%>
<script>
alert("Garage Details Deleted Successfully");
document.location="garage_details_view.jsp";
</script>

<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");

int z=s.stm.executeUpdate("delete from request_details where r_id='"+a+"'");
%>
<script>
alert("Request Details Deleted Successfully");
document.location="request_details_view.jsp";
</script>

<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");

int z=s.stm.executeUpdate("delete from feedback_details where fd_id='"+a+"'");
%>
<script>
alert("feedback Details Deleted Successfully");
document.location="feedback_details_view.jsp";
</script>

<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");

int z=s.stm.executeUpdate("delete from notices where n_id='"+a+"'");
%>
<script>
alert("Notices Deleted Successfully");
document.location="notices_view.jsp";
</script>

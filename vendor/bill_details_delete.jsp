<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");

int z=s.stm.executeUpdate("delete from bill_details where bl_id='"+a+"'");
%>
<script>
alert("Bill Details Deleted Successfully");
document.location="bill_details_view.jsp";
</script>

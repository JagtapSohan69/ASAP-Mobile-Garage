<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");

int z=s.stm.executeUpdate("delete from bank_details where b_id='"+a+"'");
%>
<script>
alert("Bank Details Deleted Successfully");
document.location="bank_details_view.jsp";
</script>

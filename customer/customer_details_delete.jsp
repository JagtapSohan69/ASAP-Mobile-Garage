<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");

int z=s.stm.executeUpdate("delete from customer_details where c_id='"+a+"'");
%>
<script>
alert("Customer Details Deleted Successfully");
document.location="customer_details_view.jsp";
</script>

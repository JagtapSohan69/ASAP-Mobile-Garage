
<title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
String b=request.getParameter("uid");
int z=s.stm.executeUpdate("delete from order_details where o_id='"+a+"' and o_uid='"+b+"'");

%>
<script>
alert("Order Deleted Successfully");
document.location="o_view.jsp";
</script>
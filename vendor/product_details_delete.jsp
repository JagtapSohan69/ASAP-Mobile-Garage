<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");

int z=s.stm.executeUpdate("delete from product_details where p_id='"+a+"'");
%>
<script>
alert("Product Details Deleted Successfully");
document.location="product_details_view.jsp";
</script>

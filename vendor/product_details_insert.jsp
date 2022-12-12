<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("gid");
String b=request.getParameter("pn");
String c=request.getParameter("pd");
//String d=request.getParameter("pp");
String e=request.getParameter("ppr");
int z=s.stm.executeUpdate("insert into product_details values(null,'"+a+"','"+b+"','"+c+"','no_image.jpg','"+e+"')");
%>
<script>
//alert("Product Details Added Successfully");
document.location="product_select_photo.jsp";
</script>
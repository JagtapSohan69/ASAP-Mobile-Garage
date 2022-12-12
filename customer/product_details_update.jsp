<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("pid");
String a=request.getParameter("gid");
String b=request.getParameter("pn");
String c=request.getParameter("pd");
String d=request.getParameter("pp");
String e=request.getParameter("ppr");
int z=s.stm.executeUpdate("update product_details set g_id='"+a+"',p_name='"+b+"',p_description='"+c+"',p_photo='"+d+"',p_price='"+e+"' where p_id='"+id+"'");
%>
<script>
alert("Product Details Updated Successfully");
document.location="product_details_view.jsp";
</script>
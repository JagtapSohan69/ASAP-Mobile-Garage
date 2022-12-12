<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("gid");
String a=request.getParameter("vid");
String b=request.getParameter("gn");
String c=request.getParameter("gd");
String d=request.getParameter("gc");
String e=request.getParameter("ga");
String f=request.getParameter("glt");
String g=request.getParameter("glg");
String h=request.getParameter("gs");
int z=s.stm.executeUpdate("update garage_details set v_id='"+a+"',g_name='"+b+"',g_description='"+c+"',g_city='"+d+"',g_address='"+e+"',g_latitude='"+f+"',g_longitude='"+g+"',g_status='"+h+"'  where g_id='"+id+"'");
%>
<script>
alert("Garage Details Updated Successfully");
document.location="garage_details_view.jsp";
</script>
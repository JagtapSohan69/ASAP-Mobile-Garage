<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("sid");
String a=request.getParameter("gid");
String b=request.getParameter("sn");
String c=request.getParameter("sd");
String d=request.getParameter("sp");
int z=s.stm.executeUpdate("update services set g_id='"+a+"',s_name='"+b+"',s_description='"+c+"',s_price='"+d+"' where s_id='"+id+"'");
%>
<script>
alert("Servies Details Updated Successfully");
document.location="services_view.jsp";
</script>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("rid");
String a=request.getParameter("cid");
String b=request.getParameter("clt");
String c=request.getParameter("clg");
String d=request.getParameter("gid");
String e=request.getParameter("rd");
String f=request.getParameter("rt");
String g=request.getParameter("rs");
int z=s.stm.executeUpdate("update request_details set c_id='"+a+"',c_latitude='"+b+"',c_longitude='"+c+"',g_id='"+d+"',r_date='"+e+"',r_time='"+f+"',r_status='"+g+"'  where r_id='"+id+"'");
%>
<script>
alert("Request Details Updated Successfully");
document.location="request_details_view.jsp";
</script>
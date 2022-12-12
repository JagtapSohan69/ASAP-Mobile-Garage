<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("fd_id");
String a=request.getParameter("fdf");
String b=request.getParameter("fdt");
String c=request.getParameter("fdm");
String d=request.getParameter("sd");
String e=request.getParameter("st");
int z=s.stm.executeUpdate("update feedback_details set fd_from='"+a+"',fd_to='"+b+"',feedback='"+c+"',s_date='"+d+"',status='"+e+"' where fd_id='"+id+"'");
%>
<script>
alert("Feedback Details updated Successfully");
document.location="feedback_details_view.jsp";
</script>
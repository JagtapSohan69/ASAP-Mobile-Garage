<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("blid");
String a=request.getParameter("gid");
String b=request.getParameter("cid");
String c=request.getParameter("ba");
String d=request.getParameter("bd");
String e=request.getParameter("s");
int z=s.stm.executeUpdate("update bill_details set g_id='"+a+"',c_id='"+b+"',b_amount='"+c+"',b_date='"+d+"',status='"+e+"' where bl_id='"+id+"'");
%>
<script>
alert("Bill Details Updated Successfully");
document.location="bill_details_view.jsp";
</script>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("nid");
String a=request.getParameter("nt");
String b=request.getParameter("n");
String c=request.getParameter("nd");
String d=request.getParameter("ns");
int z=s.stm.executeUpdate("update notices set n_to='"+a+"',notices='"+b+"',s_date='"+c+"',n_status='"+d+"' where n_id='"+id+"'");
%>
<script>
alert("Notice Details Updated Successfully");
document.location="notices_view.jsp";
</script>
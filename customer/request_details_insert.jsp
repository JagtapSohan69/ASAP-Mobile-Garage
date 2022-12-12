<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("cid");
String b=request.getParameter("adrs");
//String b=request.getParameter("clt");
//String c=request.getParameter("clg");
String d=request.getParameter("gid");
String e=request.getParameter("rd");
String f=request.getParameter("rt");
String g=request.getParameter("rs");
ResultSet rs=s.stm.executeQuery("select * from request_details where c_id='"+a+"' and g_id='"+d+"' and r_date='"+e+"'");
if(rs.next())
{
     out.println("<script>alert('Request Already Sent');history.back();</script>");
}
else
{
int z=s.stm.executeUpdate("insert into request_details values(null,'"+a+"','"+b+"','-','-','"+d+"','"+e+"','"+f+"','"+g+"')");
%>
<script>
alert("Request Sent Successfully");
document.location="request_details_view.jsp";
</script>
<% } %>
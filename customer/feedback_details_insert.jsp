<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("fdf");
String b=request.getParameter("fdt");
String c=request.getParameter("fdm");
String d=request.getParameter("sd");
String e=request.getParameter("st");
ResultSet rs=s.stm.executeQuery("select * from feedback_details where fd_from='"+a+"' and fd_to='"+b+"'");
if(rs.next())
{
     out.println("<script>alert('Already Sent');history.back();</script>");
}
else
{
int z=s.stm.executeUpdate("insert into feedback_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
%>
<script>
alert("Feedback Sent Successfully");
document.location="feedback_details_view.jsp";
</script>
<% } %>
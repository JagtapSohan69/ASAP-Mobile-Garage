<title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("fn");
String b=request.getParameter("ln");
String c=request.getParameter("mn");
String d=request.getParameter("em");
String e=request.getParameter("dob");
String f=request.getParameter("ct");
//String g=request.getParameter("pp");
ResultSet rs=s.stm.executeQuery("select * from customer_details where c_email='"+d+"' or c_mobile='"+c+"'");
if(rs.next())
{
     out.println("<script>alert('Mobile No. or Email Already Exists');history.back();</script>");
}
else
{
String ans=c.substring(c.length() - 4);
int z=s.stm.executeUpdate("insert into customer_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','noimg.png')");
int z1=s.stm.executeUpdate("insert into login values('"+d+"','"+c+"','customer','Enter Last 4 Digits of Reg. Mobile','"+ans+"','active')");
%>
<script>
alert("You've Registred Successfully");
alert("Username: <%=d%> and Password: Reg. Mobile No.");
document.location="index.jsp";
</script>
<% } %>

<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("fn");
String b=request.getParameter("ln");
String c=request.getParameter("mn");
//String d=request.getParameter("amn");
String e=request.getParameter("em");
//String f=request.getParameter("pp");
ResultSet rs=s.stm.executeQuery("select * from vendor_details where v_email='"+e+"' or v_mobile='"+c+"'");
if(rs.next())
{
     out.println("<script>alert('Mobile No. or Email Already Exists');history.back();</script>");
}
else
{
String ans=c.substring(c.length() - 4);
int z=s.stm.executeUpdate("insert into vendor_details values(null,'"+a+"','"+b+"','"+c+"','-','"+e+"','noimg.png')");
int z1=s.stm.executeUpdate("insert into login values('"+e+"','"+c+"','vendor','Enter Last 4 Digits of Reg. Mobile','"+ans+"','requested')");
%>
<script>
alert("You've Registred Successfully.. Username: <%=e%> and Password: Reg. Mobile No.");
alert("You can't loggin until Admin Approval");
document.location="index.jsp";
</script>
<% } %>
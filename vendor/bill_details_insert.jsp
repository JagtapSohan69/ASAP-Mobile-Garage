<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("gid");
String b=request.getParameter("cid");
String c=request.getParameter("bdes");
String d=request.getParameter("ba");
String e=request.getParameter("pt");
String f=request.getParameter("bd");

if(e.equals("Cash"))
{
int z=s.stm.executeUpdate("insert into bill_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','Paid')");
out.println("<script>alert('Bill Details Added Successfully');document.location='bill_details_view.jsp';</script>");
}
else if(e.equals("Online"))
{
int z=s.stm.executeUpdate("insert into bill_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','Pending')");
out.println("<script>alert('Bill Details Added Successfully');document.location='bill_details_view.jsp';</script>");
}
else
{
out.println("<script>alert('Something went wrong..!');document.location='bill_details_view.jsp';</script>");
}
%>

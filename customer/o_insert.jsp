<title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String pr=request.getParameter("prc");
int prc=Integer.parseInt(pr); 
String a=request.getParameter("ui");
String b=request.getParameter("oi");
String c=request.getParameter("oq");
int qt=Integer.parseInt(c); 
int d=prc*qt;
String e=request.getParameter("od");
//String f=request.getParameter("oss");
String g=request.getParameter("os");
ResultSet rs=s.stm.executeQuery("select * from order_details where o_item='"+b+"' and o_cid='"+a+"' and o_status='Ordered'");
if(rs.next())
{
     out.println("<script>alert('Order Request Already Sent');history.back();</script>");
}
else
{
int z=s.stm.executeUpdate("insert into order_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','Ordered','"+g+"')");
%>
<script>
alert("Order Request Sent");
document.location="o_view.jsp";
</script>
<%
}
%>

<title>Processing...</title>
 <%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
String prms=request.getParameter("pr");
if(prms.equals("acpt"))
{
   int z=s.stm.executeUpdate("update order_details set o_status='Accepted' where o_id ='"+id+"'");
   out.println("<script>alert('Request Accepted');document.location='o_view.jsp'</script>");
}
else if(prms.equals("rjct"))
{
   int z=s.stm.executeUpdate("update order_details set o_status='Rejected' where o_id ='"+id+"'");
   out.println("<script>alert('Request Rejected');document.location='o_view.jsp'</script>");
}
else
{
   out.println("<script>history.back();</script>");
}
%>
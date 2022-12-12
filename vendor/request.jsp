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
   int z=s.stm.executeUpdate("update request_details set r_status='Accepted' where r_id ='"+id+"'");
   out.println("<script>alert('Request Accepted');document.location='request_details_view.jsp'</script>");
}
else if(prms.equals("rjct"))
{
   int z=s.stm.executeUpdate("update request_details set r_status='Rejected' where r_id ='"+id+"'");
   out.println("<script>alert('Request Rejected');document.location='request_details_view.jsp'</script>");
}
else
{
   out.println("<script>history.back();</script>");
}
%>
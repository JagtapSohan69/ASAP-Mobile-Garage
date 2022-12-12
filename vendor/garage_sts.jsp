<title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
String prms=request.getParameter("pr");
if(prms.equals("op"))
{
   int z=s.stm.executeUpdate("update garage_details set g_status='Open' where g_id='"+id+"'");
   out.println("<script>document.location='garage_details_view.jsp'</script>");
}
else if(prms.equals("cl"))
{
   int z=s.stm.executeUpdate("update garage_details set g_status='Closed' where g_id='"+id+"'");
   out.println("<script>document.location='garage_details_view.jsp'</script>");
}
else
{
   out.println("<script>history.back();</script>");
}
%>
<title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
String prms=request.getParameter("pr");
if(prms.equals("ac"))
{
   int z=s.stm.executeUpdate("update login set status='active' where username='"+id+"'");
   out.println("<script>document.location='vendor_details_view.jsp'</script>");
}
else if(prms.equals("de"))
{
   int z=s.stm.executeUpdate("update login set status='blocked' where username='"+id+"'");
   out.println("<script>document.location='vendor_details_view.jsp'</script>");
}
else
{
   out.println("<script>history.back();</script>");
}
%>
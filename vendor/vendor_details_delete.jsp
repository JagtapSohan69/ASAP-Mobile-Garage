<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");

int z=s.stm.executeUpdate("delete from vendor_details where v_id='"+a+"'");
%>
<script>
alert("Vendor Details Deleted Successfully");
document.location="vendor_details_view.jsp";
</script>

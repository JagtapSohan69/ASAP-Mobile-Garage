<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("vid");
String a=request.getParameter("fn");
String b=request.getParameter("ln");
String c=request.getParameter("mn");
String d=request.getParameter("amn");
String e=request.getParameter("em");
String f=request.getParameter("pp");
int z=s.stm.executeUpdate("update vendor_details set v_fname='"+a+"',v_lname='"+b+"',v_mobile='"+c+"',v_alternatemobile='"+d+"',v_email='"+e+"',v_profilepic='"+f+"' where v_id='"+id+"'");
%>
<script>
alert("Vendor Details Updated Successfully");
document.location="vendor_details_view.jsp";
</script>
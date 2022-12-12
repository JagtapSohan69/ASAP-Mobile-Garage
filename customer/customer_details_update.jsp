<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("cid");
String a=request.getParameter("fn");
String b=request.getParameter("ln");
String c=request.getParameter("mn");
String d=request.getParameter("em");
String e=request.getParameter("dob");
String f=request.getParameter("ct");
//String g=request.getParameter("pp");
int z=s.stm.executeUpdate("update customer_details set c_fname='"+a+"',c_lname='"+b+"',c_mobile='"+c+"',c_email='"+d+"',c_dob='"+e+"',c_city='"+f+"' where c_id='"+id+"'");
%>
<script>
alert("Profile Updated Successfully");
document.location="my_profile.jsp";
</script>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("bn");
String b=request.getParameter("ahn");
String c=request.getParameter("acn");
//String d=request.getParameter("cn");
//String e=request.getParameter("pin");
//String f=request.getParameter("amt");
int z=s.stm.executeUpdate("insert into bank_details values(null,'"+a+"','"+b+"','"+c+"','-','-','0')");
%>
<script>
alert("Bank Details Added Successfully");
document.location="bank_details_view.jsp";
</script>
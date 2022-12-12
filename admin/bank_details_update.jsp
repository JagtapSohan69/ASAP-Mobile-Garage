<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("bid");
String a=request.getParameter("bn");
String b=request.getParameter("ahn");
String c=request.getParameter("acn");
String d=request.getParameter("cn");
String e=request.getParameter("pin");
String f=request.getParameter("amt");
int z=s.stm.executeUpdate("update bank_details set b_name='"+a+"',b_accountholder='"+b+"',b_accountnumber='"+c+"',b_cardnumber='"+d+"',b_pin='"+e+"',b_amount='"+f+"' where b_id='"+id+"'");
%>
<script>
alert("Bank Details Updated Successfully");
document.location="bank_details_view.jsp";
</script>
<title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("bid");
String b=request.getParameter("vid");
String c=request.getParameter("amt");
String crd=request.getParameter("cn");
String pin=request.getParameter("pin");

String rz=session.getAttribute("uname").toString();

ResultSet rs1=s.stm.executeQuery("select b.b_amount as adamt,v.v_email as vml from bank_details b,vendor_details v where v.v_email=b.b_accountholder and v.v_id='"+b+"'");
rs1.next();
int adm_amt=rs1.getInt("adamt");
String vnd=rs1.getString("vml");

ResultSet rs=s.stm.executeQuery("select * from bank_details b,customer_details c where b.b_accountholder=c.c_email and c.c_email='"+rz+"' and b.b_cardnumber='"+crd+"' and b.b_pin='"+pin+"'");
if(rs.next())
{
    int bid=rs.getInt("b_id");
	String bl=rs.getString("b_amount");
	int blc=Integer.parseInt(bl);
	int am=Integer.parseInt(c); //main
	int ad_amnt=adm_amt+am;
	int nblc=blc-am;
	if(blc>am)
	{
		int z= s.stm.executeUpdate("update bill_details set status='Paid' where	bl_id='"+a+"'");
		int z1= s.stm.executeUpdate("update bank_details set b_amount='"+nblc+"' where b_id='"+bid+"'");
		int z2= s.stm.executeUpdate("update bank_details set b_amount='"+ad_amnt+"' where b_accountholder='"+vnd+"'");
		out.println("<script>alert('Payment Done Successfully');document.location='bill_details_view.jsp';</script>");
    } 
   else
   {
     out.println("<script>alert('Insufficient Balance');history.back();</script>");
   }
}
else
{
   out.println("<script>alert('Invalid Card No. or Pin');history.back();</script>");
}   
%>
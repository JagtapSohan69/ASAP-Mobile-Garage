<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Bank Details</h2>   
                        
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Bank Details 
						<%
						String rz=session.getAttribute("uname").toString();
						ResultSet rs1=s.stm.executeQuery("select * from bank_details where b_accountholder='"+rz+"'");
						if(!rs1.next())
						{ 
						%>
							| <a href="bank_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a> 
						<% } else { }%>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="70" height="41"><div align="center">Sl No. </div></th>
    <th width="100"><div align="center">Bank Name</div></th>
    <th width="100"><div align="center">Account Holder </div></th>
    <th width="100"><div align="center">Account Number </div></th>
    <th width="100"><div align="center">Card Number </div></th>
    <th width="60"><div align="center">Pin</div></th>
    <th width="80"><div align="center">Blc. Amount</div></th>
    <th width="60"><div align="center">Action</div></th>
  </tr>
  </thead>
  <tbody>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from bank_details b,customer_details c where b.b_accountholder=c.c_email and c.c_email='"+rz+"'");
while(rs.next())
{
int sid=rs.getInt("b_id");
sl++;
%>  
  <tr>
    <td><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("b_name")%></div></td>
    <td><div align="center"><%=rs.getString("c_fname")+" "+rs.getString("c_lname")%></div></td>
    <td><div align="center"><%=rs.getString("b_accountnumber")%></div></td>
    <td><div align="center"><%=rs.getString("b_cardnumber")%></div></td>
    <td><div align="center"><%=rs.getString("b_pin")%></div></td>
    <td><div align="center">Rs. <%=rs.getString("b_amount")%> /-</div></td>
    <td><div align="center"> <a href="bank_details_delete.jsp?id=<%=sid%>" class="btn btn-danger" title="Delete">X</a></div></td>
  </tr>
<%
}
%>
</tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
					  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>

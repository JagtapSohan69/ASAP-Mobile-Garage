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
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Bank Details | <a href="bank_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="70" height="41"><div align="center">Bank Id </div></th>
    <th width="113"><div align="center">Bank Name</div></th>
    <th width="114"><div align="center">Account holder </div></th>
    <th width="124"><div align="center">Account Number </div></th>
    <th width="101"><div align="center">Card Number </div></th>
    <th width="51"><div align="center">Pin</div></th>
    <th width="71"><div align="center">Amount</div></th>
    <th width="99"><div align="center">Action</div></th>
  </tr>
  </thead>
  <tbody>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from bank_details");
while(rs.next())
{
int sid=rs.getInt("b_id");
sl++;
%>  
  <tr>
    <td><div align="center"><%=rs.getString("b_id")%></div></td>
    <td><div align="center"><%=rs.getString("b_name")%></div></td>
    <td><div align="center"><%=rs.getString("b_accountholder")%></div></td>
    <td><div align="center"><%=rs.getString("b_accountnumber")%></div></td>
    <td><div align="center"><%=rs.getString("b_cardnumber")%></div></td>
    <td><div align="center"><%=rs.getString("b_pin")%></div></td>
    <td><div align="center"><%=rs.getString("b_amount")%></div></td>
    <td><div align="center"><a href="bank_details_edit.jsp?id=<%=sid%>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a> <a href="bank_details_delete.jsp?id=<%=sid%>" class="btn btn-danger" title="Delete">X</a></div></td>
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

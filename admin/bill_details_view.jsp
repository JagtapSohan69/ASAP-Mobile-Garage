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
                            Bank Details | <a href="bill_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="69" height="31"><div align="center">Bill Id </div></th>
    <th width="102"><div align="center">Garage </div></th>
    <th width="94"><div align="center">Customer </div></th>
    <th width="97"><div align="center">Amount</div></th>
    <th width="65"><div align="center">Date</div></th>
    <th width="81"><div align="center">Status</div></th>
    <th width="102"><div align="center">Action</div></th>
  </tr>
   </thead>
  <tbody>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from bill_details b,customer_details c,garage_details g where g.g_id=b.g_id and b.c_id=c.c_id");
while(rs.next())
{
int sid=rs.getInt("bl_id");
sl++;
%>  
  <tr>
    <td height="27"><div align="center"><%=rs.getString("bl_id")%></div></td>
    <td><div align="center"><%=rs.getString("g_name")%></div></td>
    <td><div align="center"><%=rs.getString("c_fname")%> <%=rs.getString("c_lname")%></div></td>
    <td><div align="center"><%=rs.getString("b_amount")%></div></td>
    <td><div align="center"><%=rs.getString("b_date")%></div></td>
    <td><div align="center"><%=rs.getString("status")%></div></td>
    <td><div align="center"><a href="bill_details_edit.jsp?id=<%=sid%>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a> <a href="bill_details_delete.jsp?id=<%=sid%>" class="btn btn-danger" title="Delete">X</a></div></td>
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

<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Bill Details</h2>   
                        
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Bill Details <!--| <a href="bill_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a> -->
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="60" height="31"><div align="center">Sl No. </div></th>
    <th width="100"><div align="center">Garage</div></th>
    <th width="100"><div align="center">Customer</div></th>
	<th width="100"><div align="center">Description</div></th>
    <th width="80"><div align="center">Amount</div></th>
	<th width="80"><div align="center">Payment Type</div></th>
    <th width="80"><div align="center">Date</div></th>
    <th width="80"><div align="center">Status</div></th>
    <th width="80"><div align="center">Action</div></th>
  </tr>
   </thead>
  <tbody>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
String rz=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from bill_details b,customer_details c,garage_details g,vendor_details v where g.g_id=b.g_id and b.c_id=c.c_id and g.v_id=v.v_id and c.c_email='"+rz+"'");
while(rs.next())
{
int bid=rs.getInt("bl_id");
String st=rs.getString("status");
String amt=rs.getString("b_amount");
sl++;
int vid=rs.getInt("v_id");
%>  
  <tr>
    <td height="27"><div align="center"><%=rs.getString("bl_id")%></div></td>
    <td><div align="center"><%=rs.getString("g_name")%></div></td>
    <td><div align="center"><%=rs.getString("c_fname")%> <%=rs.getString("c_lname")%></div></td>
    <td><div align="center"><%=rs.getString("b_desc")%></div></td>
	<td><div align="center"><i class="fa fa-inr"></i> <%=amt%> /-</div></td>
	 <td><div align="center"><%=rs.getString("ptyp")%></div></td>
    <td><div align="center"><%=rs.getString("b_date")%></div></td>
      <% if(st.equals("Paid")) { %>
   <td><div align="center"><font color="#009900" size="4">Paid</font></div></td>
   <td><div align="center">-</div></td>
   <% } else { %>
   <td><div align="center"><font color="#FF0000" size="4">Pending</font></div></td>
   <td><div align="center"><a href="pay_form.jsp?bid=<%=bid%>&vid=<%=vid%>&amt=<%=amt%>" class="btn btn-primary">Pay Bill</a></div></td>
   <% } %>
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

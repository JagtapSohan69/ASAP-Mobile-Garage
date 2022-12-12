<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Request Details</h2>   
                        
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Request Details <!--<a href="request_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a> -->
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="80"><div align="center">Sl No. </div></th>
    <th width="100"><div align="center">Customer </div></th>
	 <th width="100"><div align="center">Address / Location </div></th>
    <!--<th width="144"><div align="center">Customer Latitude </div></th>
    <th width="139"><div align="center">Customer Longitude </div></th> -->
    <th width="100"><div align="center">Garage </div></th>
    <th width="80"><div align="center">Request Date </div></th>
    <th width="80"><div align="center">Request Time </div></th>
    <th width="60"><div align="center">Status </div></th>
	<th width="60"><div align="center">Action </div></th>
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
ResultSet rs=s.stm.executeQuery("select * from request_details r,customer_details c,garage_details g,vendor_details v where v.v_id=g.v_id and c.c_id=r.c_id and g.g_id=r.g_id and v.v_email='"+rz+"'");
while(rs.next())
{
int rid=rs.getInt("r_id");
String st=rs.getString("r_status");
String adrs=rs.getString("location");
sl++;
%>  
  <tr>
    <td><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("c_fname")%> <%=rs.getString("c_lname")%></div></td>
	<td><div align="center"><a target="_blank" href="https://maps.google.com/?q=<%=adrs%>"><%=adrs%></a></div></td>
    <!--<td><div align="center"><%=rs.getString("c_latitude")%></div></td>
    <td><div align="center"><%=rs.getString("c_longitude")%></div></td> -->
    <td><div align="center"><%=rs.getString("g_name")%></div></td>
    <td><div align="center"><%=rs.getString("r_date")%></div></td>
    <td><div align="center"><%=rs.getString("r_time")%></div></td>
     <% if(st.equals("Requested")) { %>
   <td><div align="center"><font color="#0099FF" size="4">Requested</font></div></td>
     <td><div align="center"><a class="btn btn-success" onclick="return confirm('Are you sure?')" href="request.jsp?id=<%=rid%>&pr=acpt" title="Accept">Accept</a> | <a class="btn btn-danger" onclick="return confirm('Are you sure?')" href="request.jsp?id=<%=rid%>&pr=rjct" title="Reject">Reject</a></div></td>
   <% } else if(st.equals("Accepted")) { %>
   <td><div align="center"><font color="#009900" size="4">Accepted</font></div></td>
   <td><div align="center">-</div></td>
   <% } else { %>
   <td><div align="center"><font color="#FF0000" size="4">Rejected</font></div></td>
   <td><div align="center">-</div></td>
   <% } %>
  </tr>
  <%
}
%>
</tbody>
</table>
   </table>
                            </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
					  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>


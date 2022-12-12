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
                            Request Details <a href="request_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="85" height="52"><div align="center">Request Id </div></th>
    <th width="112"><div align="center">Customer Id </div></th>
    <th width="144"><div align="center">Customer Latitude </div></th>
    <th width="139"><div align="center">Customer Longitude </div></th>
    <th width="90"><div align="center">Garage Id </div></th>
    <th width="94"><div align="center">Request Date </div></th>
    <th width="89"><div align="center">Request Time </div></th>
    <th width="100"><div align="center">Request Status </div></th>
    <th width="74"><div align="center">Action</div></th>
  </tr>
  </thead>
  <tbody>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from request_details r,customer_details c,garage_details g where c.c_id=r.c_id and g.g_id=r.g_id");
while(rs.next())
{
int sid=rs.getInt("r_id");
sl++;
%>  
  <tr>
    <td><div align="center"><%=rs.getString("r_id")%></div></td>
    <td><div align="center"><%=rs.getString("c_fname")%><%=rs.getString("c_lname")%></div></td>
    <td><div align="center"><%=rs.getString("c_latitude")%></div></td>
    <td><div align="center"><%=rs.getString("c_longitude")%></div></td>
    <td><div align="center"><%=rs.getString("g_name")%></div></td>
    <td><div align="center"><%=rs.getString("r_date")%></div></td>
    <td><div align="center"><%=rs.getString("r_time")%></div></td>
    <td><div align="center"><%=rs.getString("r_status")%></div></td>
    <td><div align="center"><a href="request_details_edit.jsp?id=<%=sid%>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i> </a> <a href="request_details_delete.jsp?id=<%=sid%>" class="btn btn-danger" title="Delete">X</a> </div></td>
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


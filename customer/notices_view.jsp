<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Notices</h2>   
                        
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Notices | <a href="notices_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="80"><div align="center">Notice Id </div></th>
    <th width="72"><div align="center">Notice To </div></th>
    <th width="69"><div align="center">Notice</div></th>
    <th width="74"><div align="center">Date</div></th>
    <th width="67"><div align="center">Status</div></th>
    <th width="109"><div align="center">Action</div></th>
  </tr>
  </thead>
  <tbody>
  <%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from notices n,vendor_details v where n.n_to=v.v_id");
while(rs.next())
{
int sid=rs.getInt("n_id");
sl++;
%>  
  <tr>
    <td><div align="center"><%=rs.getString("n_id")%></div></td>
    <td><div align="center"><%=rs.getString("v_fname")%><%=rs.getString("v_lname")%></div></td>
    <td><div align="center"><%=rs.getString("notices")%></div></td>
    <td><div align="center"><%=rs.getString("s_date")%></div></td>
    <td><div align="center"><%=rs.getString("n_status")%></div></td>
    <td><div align="center"><a href="notices_edit.jsp?id=<%=sid%>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a> <a href="notices_delete.jsp?id=<%=sid%>" class="btn btn-danger" title="Delete">X</a> </div></td>
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


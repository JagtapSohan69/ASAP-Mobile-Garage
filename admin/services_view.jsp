<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Services</h2>   
                        
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Services <a href="services_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="84"><div align="center">Service Id </div></th>
    <th width="91"><div align="center">Garage Id </div></th>
    <th width="109"><div align="center">Service name </div></th>
    <th width="130"><div align="center">Service Description </div></th>
    <th width="82"><div align="center">Price</div></th>
    <th width="97"><div align="center">Action</div></th>
  </tr>
  </thead>
  <tbody>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from services s,garage_details g where g.g_id=s.g_id");
while(rs.next())
{
int sid=rs.getInt("s_id");
sl++;
%>    
    <td><div align="center"><%=rs.getString("s_id")%></div></td>
    <td><div align="center"><%=rs.getString("g_name")%></div></td>
    <td><div align="center"><%=rs.getString("s_name")%></div></td>
    <td><div align="center"><%=rs.getString("s_description")%></div></td>
    <td><div align="center"><%=rs.getString("s_price")%></div></td>
    <td><div align="center"><a href="services_edit.jsp?id=<%=sid%>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a>  <a href="services_delete.jsp?id=<%=sid%>" class="btn btn-danger" title="Delete">X</a></div></td>
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

<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Product Details</h2>   
                        
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Product Details | <a href="product_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="68"><div align="center">Product Id </div></th>
    <th width="44"><div align="center">G Id </div></th>
    <th width="71"><div align="center">Product name </div></th>
    <th width="77"><div align="center">Product Description</div></th>
    <th width="101"><div align="center">Product photo </div></th>
    <th width="77"><div align="center">Price</div></th>
    <th width="88"><div align="center">Action</div></th>
  </tr>
  </thead>
  <tbody>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from product_details p,garage_details g where g.g_id=p.g_id");
while(rs.next())
{
int sid=rs.getInt("p_id");
sl++;
%>  
  <tr>
    <td><div align="center"><%=rs.getString("p_id")%></div></td>
    <td><div align="center"><%=rs.getString("g_name")%></div></td>
    <td><div align="center"><%=rs.getString("p_name")%></div></td>
    <td><div align="center"><%=rs.getString("p_description")%></div></td>
    <td><div align="center"><%=rs.getString("p_photo")%></div></td>
    <td><div align="center"><%=rs.getString("p_price")%></div></td>
    <td><div align="center"><a href="product_details_edit.jsp?id=<%=sid%>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a>  <a href="product_details_delete.jsp?id=<%=sid%>"  class="btn btn-danger" title="Delete">X</a> </div></td>
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


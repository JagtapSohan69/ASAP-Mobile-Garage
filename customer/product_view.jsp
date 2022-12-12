<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2> Product Details</h2>    
                    </div>
                </div>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String gid=request.getParameter("gid");
String pid=request.getParameter("pid");
ResultSet rs=s.stm.executeQuery("select * from  product_details p,garage_details g,vendor_details v where g.g_id=p.g_id and g.g_id=p.g_id and g.v_id=v.v_id and p.p_id='"+pid+"'"); 
rs.next();
String prc=rs.getString("p_price");
%>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Product Details | <a class="btn btn-primary" href="products.jsp?gid=<%=gid%>"><i class="fa fa-arrow-left"></i> Back</a>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table width="100%" class="table table-striped table-bordered table-hover">
	<thead>
    <tr>
      <th width="50%"><div align="center"><strong>Part Photo</strong></div></th>
      <th width="50%"><div align="center"><strong> Details </strong></div></th>
    </tr>
	</thead>
	<tbody>
    <tr>
      <td><div align="center"><img src="../uploads/<%=rs.getString("p_photo")%>" width="100%"/></div></td>
      <td><table width="100%" class="table table-striped table-bordered table-hover">
  <tr>
    <td>Name</td>
    <td><%=rs.getString("p_name")%></td>
  </tr>
  <tr>
    <td>Description</td>
    <td><%=rs.getString("p_description")%></td>
  </tr>
  <tr>
    <td>Price</td>
    <td><i class="fa fa-inr"></i> <%=prc%> /-</td>
  </tr>
  <tr>
    <td>Garage / Store </td>
    <td><%=rs.getString("g_name")%></td>
  </tr>
</table>
<div align="center"><a onclick="return confirm('Do you really want to proceed..?')" href="o_form.jsp?gid=<%=gid%>&pid=<%=pid%>&prc=<%=prc%>" class="btn btn-success">Order Now</a></div>
</td>
    </tr>
</tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
					  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>


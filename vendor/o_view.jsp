<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2> Order Details</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Order Details <!--| <a class="btn btn-success" href="o_form.jsp"><i class="fa fa-plus"></i> Add New</a> -->
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
    <tr>
      <th width="80" height="27"><div align="center"><strong>Sl No.</strong></div></th>
      <th width="120"><div align="center"><strong>User</strong></div></th>
      <th width="120"><div align="center"><strong>Item / Part</strong></div></th>
      <th width="80"><div align="center"><strong> Quantity </strong></div></th>
      <th width="80"><div align="center"><strong> Amount </strong></div></th>
      <th width="100"><div align="center"><strong>Ordered Date </strong></div></th>
	  <th width="100"><div align="center"><strong> Status </strong></div></th>
      <th width="140"><div align="center"><strong>Action</strong></div></th>
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
ResultSet rs=s.stm.executeQuery("select * from  order_details o, garage_details g,product_details p,customer_details c,vendor_details v  where o.o_gid=g.g_id and o.o_cid=c.c_id and o.o_item=p.p_id and v.v_id=g.v_id and v.v_email='"+rz+"'"); 
while(rs.next())
{
sl++;
int oid=rs.getInt("o_id");
String sts=rs.getString("o_status");
%>
    <tr>
      <td height="26"><div align="center"><%=sl%></div></td>
      <td><div align="center"><a href="cust_info.jsp?cid=<%=rs.getInt("c_id")%>"><%=rs.getString("c_fname")+" "+rs.getString("c_lname")%></a></div></td>
      <td><div align="center"><img src="../uploads/<%=rs.getString("p_photo")%>" width="80px" height="80px"/></div></td>
      <td><div align="center"><%=rs.getString("o_quantity")%></div></td>
      <td><div align="center"><i class="fa fa-inr"></i> <%=rs.getString("o_tprice")%> /-</div></td>
      <td><div align="center"><%=rs.getString("o_date")%></div></td>
	   <% if(sts.equals("Ordered")) { %>
	  <td><div align="center"><font size="3" color="#0099FF">Requested</font></div></td>
	   <td><div align="center"><a class="btn btn-success" onclick="return confirm('Are you sure?')" href="order_req.jsp?id=<%=oid%>&pr=acpt" title="Accept">Accept</a> | <a class="btn btn-danger" onclick="return confirm('Are you sure?')" href="order_req.jsp?id=<%=oid%>&pr=rjct" title="Reject">Reject</a></div></td>
	  <% } else if(sts.equals("Accepted")) { %>
	  <td><div align="center"><font size="3" color="#009900">Confirmed</font></div></td>
	  <td><div align="center">-</div></td>
	  <% } else { %>
	    <td><div align="center"><font size="3" color="#FF0000">Rejected</font></div></td>
		<td><div align="center">-</div></td>
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

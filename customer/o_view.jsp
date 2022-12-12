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
      <th width="107" height="27"><div align="center"><strong>Sl No.</strong></div></th>
      <th width="128"><div align="center"><strong>Customer</strong></div></th>
      <th width="119"><div align="center"><strong>Item / Part</strong></div></th>
      <th width="170"><div align="center"><strong> Quantity </strong></div></th>
      <th width="167"><div align="center"><strong> Total Price </strong></div></th>
      <th width="165"><div align="center"><strong>Ordered Date </strong></div></th>
      <th width="117"><div align="center"><strong>Garage </strong></div></th> 
	  <th width="144"><div align="center"><strong> Status </strong></div></th>
     <th width="103"><div align="center"><strong>Action</strong></div></th> 
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
ResultSet rs=s.stm.executeQuery("select * from  order_details o, garage_details g,product_details p,customer_details c where o.o_gid=g.g_id and o.o_cid=c.c_id and o.o_item=p.p_id and c.c_email='"+rz+"'"); 
while(rs.next())
{
sl++;
int oid=rs.getInt("o_id");
String sts=rs.getString("o_status");
int cid=rs.getInt("o_cid");
%>
    <tr>
      <td height="26"><div align="center"><%=sl%></div></td>
      <td><div align="center"><%=rs.getString("c_fname")+" "+rs.getString("c_lname")%></div></td>
      <td><div align="center"><img src="../uploads/<%=rs.getString("p_photo")%>" width="80px" height="80px"/></div></td>
      <td><div align="center"><%=rs.getString("o_quantity")%></div></td>
      <td><div align="center"><%=rs.getString("o_tprice")%></div></td>
      <td><div align="center"><%=rs.getString("o_date")%></div></td>
      <td><div align="center"><%=rs.getString("g_name")%></div></td>
	   <% if(sts.equals("Ordered")) { %>
	  <td><div align="center"><font size="4" color="#0099FF">Order Requested</font></div></td>
	  <td><div align="center"><a onclick="return confirm('Are you sure?')" href="o_delete.jsp?id=<%=oid%>&cid=<%=cid%>"title="Delete" class="btn btn-danger"><i class="fa fa-eraser"></i></a></div></td>
	  <% } else if(sts.equals("Accepted")) { %>
	  <td><div align="center"><font size="4" color="#009900">Confirmed</font></div></td>
	  <td><div align="center">-</div></td>
	  <% } else { %>
	    <td><div align="center"><font size="4" color="#FF0000">Rejected</font></div></td>
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

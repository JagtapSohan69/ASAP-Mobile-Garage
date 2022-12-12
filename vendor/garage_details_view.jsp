<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Garage Details</h2>   
                        
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Garage Details | <a href="garage_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="55" height="23"><div align="center">Sl No.</div></th>
    <th width="63"><div align="center">Vendor</div></th>
    <th width="100"><div align="center">Garage Name </div></th>
    <th width="86"><div align="center"> Description </div></th>
    <th width="88"><div align="center"> City </div></th>
    <th width="125"><div align="center">Address</div></th>
  <!--  <th width="81"><div align="center">Latitude</div></th>
    <th width="85"><div align="center">Longitude</div></th> -->
    <th width="100"><div align="center">Status</div></th>
    <th width="79"><div align="center">Action</div></th>
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
ResultSet rs=s.stm.executeQuery("select * from garage_details g,vendor_details v where v.v_id=g.v_id and v.v_email='"+rz+"'");
while(rs.next())
{
int sid=rs.getInt("g_id");
sl++;
String st=rs.getString("g_status");
%>  
  <tr>
    <td height="23"><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("v_fname")%><%=rs.getString("v_lname")%></div></td>
    <td><div align="center"><%=rs.getString("g_name")%></div></td>
    <td><div align="center"><%=rs.getString("g_description")%></div></td>
    <td><div align="center"><%=rs.getString("g_city")%></div></td>
    <td><div align="center"><%=rs.getString("g_address")%></div></td>
<!--    <td><div align="center"><%=rs.getString("g_latitude")%></div></td>
    <td><div align="center"><%=rs.getString("g_longitude")%></div></td> -->
     <% if(st.equals("Open")) { %>
   <td><div align="center"><font color="#009900" size="5">Open</font></br><font size="2"><a onclick="return confirm('Are you sure?')" href="garage_sts.jsp?id=<%=sid%>&pr=cl">Close</a></font></div></td>
   <% } else { %>
   <td><div align="center"><font color="#FF0000" size="5">Closed</font></br><font size="2"><a onclick="return confirm('Are you sure?')" href="garage_sts.jsp?id=<%=sid%>&pr=op">Open</a></font></div></td>
   <% } %>
    <td><div align="center"><a href="garage_details_edit.jsp?id=<%=sid%>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a>  <a href="garage_details_delete.jsp?id=<%=sid%>" class="btn btn-danger" title="Delete">X</a> </div></td>
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


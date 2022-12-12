<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Vendor Details</h2>   
                        
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Vendor Details<!-- | <a href="vendor_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a> -->
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="60"><div align="center">Sl. No. </div></th>
	<th width="104"><div align="center">Profile Pic</div></th>
    <th width="120"><div align="center">Full Name</div></th>
    <th width="100"><div align="center">Mobile No. </div></th>
    <th width="120"><div align="center">Email</div></th>
	<th width="100"><div align="center">Status</div></th>
    <th width="120"><div align="center">Action</div></th>
  </tr>
  </thead>
  <tbody>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from vendor_details v,login l where v.v_email=l.username");
while(rs.next())
{
int sid=rs.getInt("v_id");
sl++;
String st=rs.getString("status");
String eml=rs.getString("v_email");
%>  
  <tr>
    <td><div align="center"><%=sl%></div></td>
	<td><div align="center"><img src="../uploads/<%=rs.getString("v_profilepic")%>" width="80px" height="80px"/></div></td>
    <td><div align="center"><%=rs.getString("v_fname")%> <%=rs.getString("v_lname")%></div></td>
    <td><div align="center"><%=rs.getString("v_mobile")%></div></td>
    <td><div align="center"><%=eml%></div></td>
	<% if(st.equals("requested")) { %>
	<td><div align="center"><font color="#0066FF" size="5">Requested</font></div></td>
	<td><div align="center"><a class="btn btn-success" onclick="return confirm('Are you sure?')" href="vendor_req.jsp?id=<%=eml%>&pr=acpt">Accept</a> <a class="btn btn-danger" onclick="return confirm('Are you sure?')" href="vendor_req.jsp?id=<%=eml%>&pr=rjct">Reject</a></div></td>
   <% } else if(st.equals("active")) { %>
   <td><div align="center"><font color="#009900" size="5">Active</font></br><font size="2"><a onclick="return confirm('Are you sure?')" href="vendor_prms.jsp?id=<%=eml%>&pr=de">De-Activate Vendor</a></font></div></td>
	<td><div align="center"><a class="btn btn-primary" href="garage_details_view.jsp?vid=<%=sid%>">Show Garage</a></div></td>
   <% } else if(st.equals("blocked")) { %>
   <td><div align="center"><font color="#FF0000" size="5">De-Activated</font></br><font size="2"><a onclick="return confirm('Are you sure?')" href="vendor_prms.jsp?id=<%=eml%>&pr=ac">Activate Vendor</a></font></div></td>
	<td><div align="center"><a class="btn btn-primary" href="garage_details_view.jsp?vid=<%=sid%>">Show Garage</a></div></td>
   <% } else { %>
   <td><div align="center"><font color="#993300" size="5">Rejected</font></div></td>
	<td><div align="center">-</div></td>
   <% } %>
   <!-- <td><div align="center"><a href="vendor_details_edit.jsp?id=<%=sid%>"  class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a> <a href="vendor_details_delete.jsp?id=<%=sid%>"  class="btn btn-danger" title="Delete">X</a></div></td> -->
  </tr>
<%
}
%>
</tbody>
</table>
  </div>
                        </div>
                    </div>
                    
					  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>
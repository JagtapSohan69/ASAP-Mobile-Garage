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
                            Vendor Details | <a href="vendor_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="69"><div align="center">Vendor Id </div></th>
    <th width="77"><div align="center">Fname</div></th>
    <th width="81"><div align="center">Lname</div></th>
    <th width="113"><div align="center">Mobile No </div></th>
    <th width="105"><div align="center">Alternate Mobile</div></th>
    <th width="61"><div align="center">Email</div></th>
    <th width="104"><div align="center">Profile Pic </div></th>
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
ResultSet rs=s.stm.executeQuery("select * from vendor_details");
while(rs.next())
{
int sid=rs.getInt("v_id");
sl++;
%>  
  <tr>
    <td><div align="center"><%=rs.getString("v_id")%></div></td>
    <td><div align="center"><%=rs.getString("v_fname")%></div></td>
    <td><div align="center"><%=rs.getString("v_lname")%></div></td>
    <td><div align="center"><%=rs.getString("v_mobile")%></div></td>
    <td><div align="center"><%=rs.getString("v_alternatemobile")%></div></td>
    <td><div align="center"><%=rs.getString("v_email")%></div></td>
    <td><div align="center"><%=rs.getString("v_profilepic")%></div></td>
    <td><div align="center"><a href="vendor_details_edit.jsp?id=<%=sid%>"  class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a> <a href="vendor_details_delete.jsp?id=<%=sid%>"  class="btn btn-danger" title="Delete">X</a></div></td>
  </tr>
<%
}
%>
</tbody>
</table>

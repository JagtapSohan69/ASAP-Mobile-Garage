<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Customer Details</h2>   
                        
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Customer Details<!-- | <a href="customer_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a> -->
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="49" height="52"><div align="center">Sl. No.</div></th>
    <th width="55"><div align="center">First Name</div></th>
    <th width="43"><div align="center">Last Name</div></th>
    <th width="90"><div align="center">Mobile no </div></th>
    <th width="64"><div align="center">Email</div></th>
    <th width="43"><div align="center">DOB</div></th>
    <th width="62"><div align="center">City</div></th>
    <th width="83"><div align="center">Profile Pic </div></th>
   <!-- <th width="99"><div align="center">Action</div></th> -->
  </tr>
  </thead>
  <tbody>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from customer_details");
while(rs.next())
{
int sid=rs.getInt("c_id");
sl++;
%>  
  <tr>
    <td><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("c_fname")%></div></td>
    <td><div align="center"><%=rs.getString("c_lname")%></div></td>
    <td><div align="center"><%=rs.getString("c_mobile")%></div></td>
    <td><div align="center"><%=rs.getString("c_email")%></div></td>
    <td><div align="center"><%=rs.getString("c_dob")%></div></td>
    <td><div align="center"><%=rs.getString("c_city")%></div></td>
    <td><div align="center"><img src="../uploads/<%=rs.getString("c_profilepic")%>" width="80px" height="80px"/></div></td>
<!--    <td><div align="center"><a href="customer_details_edit.jsp?id=<%=sid%>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i></a> <a href="customer_details_delete.jsp?id=<%=sid%>" class="btn btn-danger" title="Delete">X</a> </div></td>
 -->  </tr>
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


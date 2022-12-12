<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Feedback Details</h2>   
                        
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Feedback Details <!--| <a href="feedback_details_form.jsp" class="btn btn-success"><i class="fa fa-plus"></i> Add New</a> -->
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
	<thead>
  <tr>
    <th width="73" height="37"><div align="center">Sl. No</div></th>
    <th width="100"><div align="center">From </div></th>
    <th width="100"><div align="center"> To </div></th>
    <th width="120"><div align="center">Feedback</div></th>
    <th width="90"><div align="center">Date</div></th>
    <th width="87"><div align="center">Status</div></th>
  <!--  <th width="139"><div align="center">Action</div></th> -->
  </tr>
  </thead>
  <tbody>
    
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
int sl=0;
ResultSet rs=s.stm.executeQuery("select * from feedback_details fd,customer_details c,vendor_details v where c.c_email=fd_from and v.v_email=fd.fd_to");
while(rs.next())
{
int sid=rs.getInt("fd_id");
sl++;
%>  
  <tr>
    <td><div align="center"><%=sl%></div></td>
    <td><div align="center"><%=rs.getString("c_fname")%><%=rs.getString("c_lname")%></div></td>
    <td><div align="center"><%=rs.getString("v_fname")%><%=rs.getString("v_lname")%></div></td>
    <td><div align="center"><%=rs.getString("feedback")%></div></td>
    <td><div align="center"><%=rs.getString("s_date")%></div></td>
    <td><div align="center"><%=rs.getString("status")%></div></td>
<!--    <td><div align="center"><a href="feedback_details_edit.jsp?id=<%=sid%>" class="btn btn-primary" title="Edit"><i class="fa fa-edit"></i> </a> <a href="feedback_details_delete.jsp?id=<%=sid%>" class="btn btn-danger" title="Delete">X</a></div></td>
 -->  </tr>
  <%
}
%>
</table>
</tbody>
  </table>
                            </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
					  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>


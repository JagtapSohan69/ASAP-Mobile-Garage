<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2> Products</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Products | <a class="btn btn-primary" href="garage_details_view.jsp"><i class="fa fa-arrow-left"></i> Back</a>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	
						
				  <%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
				
				<table class="table">
				<%
				int i=0;
				String id=request.getParameter("gid");
                ResultSet rs=s.stm.executeQuery("select * from  product_details p,garage_details g,vendor_details v where g.g_id=p.g_id and g.g_id=p.g_id and g.v_id=v.v_id and p.g_id='"+id+"'");
				while(rs.next())
				{
				int pid=rs.getInt("p_id");
                String pt=rs.getString("p_photo");
				if(i%4==0)
				{
				%>
				<tr>					
					<td>
					<a href="product_view.jsp?pid=<%=pid%>&gid=<%=id%>"><img src="../uploads/<%=pt%>" width="200Px" height="200px"/></a>
					<p style="padding-top:4px"><b>Name: </b><%=rs.getString("p_name")%>
					</br>
					<b>Desc: </b><%=rs.getString("p_description")%></p>				
					</td>
				<%
				}
				else
				{
				%>	
					<td>
					<a href="product_view.jsp?pid=<%=pid%>&gid=<%=id%>"><img src="../uploads/<%=pt%>" width="200Px" height="200px"/></a>
					<p style="padding-top:4px"><b>Name: </b><%=rs.getString("p_name")%>
					</br>
					<b>Desc: </b><%=rs.getString("p_description")%></p>
					</td>
					<%
					}
					i++;
					}
					%>
				</tr>
				</table>
  
					   
					   
                            </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
					  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>


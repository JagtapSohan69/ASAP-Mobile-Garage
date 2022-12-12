<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2> View Photo</h2>   
                       
                    </div>
                </div>
				<div class="row">
                <div class="col-md-12">
   <!--   Kitchen Sink -->
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from  product_details where p_id='"+id+"'"); 
rs.next();
%>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          View Photo | <a class="btn btn-primary" href="product_details_view.jsp"><i class="fa fa-arrow-left"></i> Back</a>
                        </div>
	<div class="panel-body">
	<div class="table-responsive">
	<center>
	<img src="../uploads/<%=rs.getString("p_photo")%>" width="60%"/></div>
    </center>
	                        </div>
                        </div>
                    </div>
                     <!-- End  Kitchen Sink -->
					  </div>
   
    </div>
<jsp:include page="footer.jsp"></jsp:include>


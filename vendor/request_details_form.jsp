<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Request Details</h2>   
                        
                    </div>
                </div>
<jsp:include page="val.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<form id="WFS_Riz" name="form1" method="post" action="request_details_insert.jsp">
 
 <div>
 <label>Customer Id</label>
     <div>
               <select class="validate[required] form-control" style="width:90%" name="cid" id="cid">
		        <option value="">-- Select Customer --</option>
		        <%
		  ResultSet rs=s.stm.executeQuery("select * from customer_details");
		  while(rs.next())
		  {
		  %>
		        <option value="" value="<%=rs.getInt("c_id")%>">
		        <%=rs.getString("c_fname")%><%=rs.getString("c_lname")%>
		        </option>
		        <%
		  }
		  %>
	             </select>
           </div>
</div>
</br>		   
<div>
 <label>Customer Latitude</label>
     <div>
          <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="clt" type="text" id="clt">
        </div>
</div>
</br>		
<div>
 <label>Customer Longitude</label>
     <div>
          <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="clg" type="text" id="clg">
        </div>
</div>
</br>
		
 <div>
 <label>Garage Id</label>
     <div>
                <select class="validate[required] form-control" style="width:90%" name="gid" id="gid">
		        <option value="">-- Select Garage --</option>
		        <%
		  ResultSet rs1=s.stm.executeQuery("select * from garage_details");
		  while(rs1.next())
		  {
		  %>
		        <option value="" value="<%=rs1.getInt("g_id")%>">
		        <%=rs1.getString("g_name")%>
		        </option>
		        <%
		  }
		  %>
	              </select>
            </div>
</div>
</br>
			
 <div>
 <label>Request Date</label>
     <div>			 
          <input class="validate[required,custom[date]] form-control" style="width:90%" name="rd" type="date" id="rd">
        </div>
</div>
</br>		
 <div>
 <label>Request Time</label>
     <div>
          <input class="validate[required] form-control" style="width:90%" name="rt" type="text" id="rt">
        </div>
</div>
</br>
		
  <div>
 <label>Request Status</label>
     <div>  
          <input class="validate[required] form-control" style="width:90%"name="rs" type="text" id="rs">
        </div>
</div>
</br>		
    <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Bill Details</h2>   
                        
                    </div>
                </div>
<jsp:include page="val.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<form id="WFS_Riz" name="form1" method="post" action="bill_details_insert.jsp">

<div>
<label>Garage Id </label>
          <div>
              <select class="validate[required] form-control" style="width:90%" name="gid" id="gid">
	            <option value="">-- Select Garage --</option>
	            <%
		  ResultSet rs=s.stm.executeQuery("select * from garage_details");
		  while(rs.next())
		  {
		  %>
	            <option value="" value="<%=rs.getInt("g_id")%>"><%=rs.getString("g_name")%></option>
	            <%
		  }
		  %>
              </select>
          </div>
</div>
</br>		  
<div>
<label>Customer Id </label>
          <div>
               <select class="validate[required]  form-control" style="width:90%" name="cid" id="cid">
	             <option value="">-- Select Customer --</option>
	             <%
		  ResultSet rs1=s.stm.executeQuery("select * from customer_details");
		  while(rs1.next())
		  {
		  %>
	             <option value="" value="<%=rs1.getInt("c_id")%>"><%=rs1.getString("c_fname")%> <%=rs1.getString("c_lname")%></option>
	             <%
		  }
		  %>
            </select>
          </div>
</div>
</br>
    <div>
<label>Amount</label>
        <div>
          <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%"name="ba" type="text" id="ba">
      </div>
</div>
</br>	  

<div>
<label>Date</label>
        <div>
          <input class="validate[required,custom[date]] form-control" style="width:90%" name="bd" type="date" id="bd">
      </div>
</div>
</br>	  
   <div>
<label>Status </label>
        <div align="left">
          <input class="validate[required] form-control" style="width:90%" name="s" type="text" id="s">
      </div>
</div>
   </br>
   <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

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
<label>Garage </label>
          <div>
              <select readonly class="validate[required] form-control" style="width:90%" name="gid" id="gid">
	          <!--  <option value="">-- Select Garage --</option> -->
	            <%
		  String rz=session.getAttribute("uname").toString();
		  ResultSet rs=s.stm.executeQuery("select * from garage_details g,vendor_details v where g.v_id=v.v_id and v.v_email='"+rz+"'");
		  while(rs.next())
		  {
		  %>
	            <option value="<%=rs.getInt("g_id")%>"><%=rs.getString("g_name")%></option>
	            <%
		  }
		  %>
              </select>
          </div>
</div>
</br>		  
<div>
<label>Customer </label>
          <div>
               <select class="validate[required]  form-control" style="width:90%" name="cid" id="cid">
	             <option value="">-- Select Customer --</option>
	             <%
		  ResultSet rs1=s.stm.executeQuery("select * from customer_details");
		  while(rs1.next())
		  {
		  %>
	             <option value="<%=rs1.getInt("c_id")%>"><%=rs1.getString("c_fname")%> <%=rs1.getString("c_lname")%></option>
	             <%
		  }
		  %>
            </select>
          </div>
</div>
</br>
  
   <div>
<label>Description</label>
        <div>
          <textarea name="bdes" rows="4" class="validate[required] form-control" id="bdes" style="width:90%"></textarea>
      </div>
</div>
</br>	  
 
   
    <div>
<label>Amount</label>
        <div>
          <input class="validate[required,custom[onlyNumber]] form-control" maxlength="5" style="width:90%"name="ba" type="text" id="ba">
      </div>
</div>
</br>	  

<div>
<label>Patment Type [Cash Payment is Live]</label>
        <div>
          <select class="validate[required] form-control" style="width:90%"name="pt" id="pt">
		  <option value="">-- Select Type --</option>
		  <option value="Cash">Cash [Offline]</option>
		  <option value="Online">Online Payment</option>
		  </select>
      </div>
</div>
</br>	  
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%
 SimpleDateFormat sd = new SimpleDateFormat("dd-MM-yyyy");
 Date d1=new Date(); 
 sd.setTimeZone(TimeZone.getTimeZone("IST"));
 String dt=sd.format(d1);
%>	
<div>
<label>Date</label>
        <div>
          <input class="validate[required,custom[date]] form-control" readonly="" value="<%=dt%>" style="width:90%" name="bd" type="text" id="bd">
      </div>
</div>
</br>	  

   <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>
<jsp:include page="footer.jsp"></jsp:include>

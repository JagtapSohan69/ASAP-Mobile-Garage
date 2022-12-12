<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
 <% String gid=request.getParameter("gid");  String pid=request.getParameter("pid"); %>
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Order Details | <a class="btn btn-primary" href="product_view.jsp?gid=<%=gid%>&pid=<%=pid%>"><i class="fa fa-arrow-left"></i> Back</a> </h2>   
                        
                    </div>
                </div>
				
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%@page import="java.util.Date"%>

<jsp:include page="val.jsp"></jsp:include>
<%
Date d=new Date();
int dd,mm,yy;
dd=d.getDate(); mm=d.getMonth()+1; yy=d.getYear()+1900;
String dt=dd+"-"+mm+"-"+yy;

String prc=request.getParameter("prc");
%> 
<form  id="WFS_Riz" name="form1" method="post" action="o_insert.jsp">
 <input type="hidden" value="<%=prc%>" name="prc"/>
     <!--<div><lable>Order Type</lable>
      <input name="ot" class="validate[required] form-control" style="width:90%" type="text" id="ot">
	   </div></br> -->
    
	<div><lable>Garage</lable>
      <select readonly name="os" class="validate[required] form-control" style="width:90%" type="text" id="os">
	    <!--<!--<option value="">--Select showroom--</option> --> -->
	  <%
	     ResultSet rs=s.stm.executeQuery("select * from garage_details g,vendor_details v where g.v_id=v.v_id and g.g_id='"+gid+"'");
		  while(rs.next())
		  {
		  %>
	            <option value="<%=rs.getInt("g_id")%>"><%=rs.getString("g_name")%></option>
	            <%
		  }
		  %>
	  </select>
	    </div></br>
		
		<div> <lable>User</lable>
      <select readonly name="ui" class="validate[required] form-control" style="width:90%" id="ui">
	  <!-- <option value="">--Select car--</option> -->
	  <%
	  String rz=session.getAttribute("uname").toString();
	  ResultSet rs1=s.stm.executeQuery("select * from customer_details where c_email='"+rz+"'");
	  while(rs1.next())
	  {
	  %>
	  <option value="<%=rs1.getInt("c_id")%>"><%=rs1.getString("c_fname")+" "+rs1.getString("c_lname")%></option>
	  <%
	  }
	  %>
	  </select>
	  </div></br>

	<div><lable>Order Item / Product ID</lable>
      <input name="oi" readonly="" value="<%=pid%>" class="validate[required,custom[onlyNumber] form-control" style="width:90%" type="text" id="oi">
	   </div></br>
     <div><lable>Order Quantity [Increase Qnty.]</lable>
      <input name="oq" class="validate[required,custom[onlyNumber] form-control" style="width:90%" value="1" type="number" min="1" max="10" id="oq">
	   </div></br>
  <!-- <div><lable>Order Total Price</lable>
      <input name="otp" class="validate[required,custom[onlyNumber] form-control" style="width:90%" type="text" id="otp">
	   </div></br> -->
    <div><lable>Order Date</lable>
      <input name="od"  value="<%=dt%>" class="validate[required,custom[date]] form-control" readonly="" style="width:90%" type="text" id="od">
	   </div></br>
    <!--<div><lable>Order Status</lable>
      <input name="oss" class="validate[required] form-control" value="Orderd" readonly="" style="width:90%" type="text" id="oss">
	   </div></br>
    --> 
  
    <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
        <input type="reset" class="btn btn-default" name="Reset" value="Reset">
      </div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
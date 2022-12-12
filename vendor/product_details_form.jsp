<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Product Details</h2>   
                        
                    </div>
                </div>
<jsp:include page="val.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<form id="WFS_Riz" name="form1" method="post" action="product_details_insert.jsp">
  
<div>
<label>Garage ID</label>
        <div>
            <select class="validate[required]  form-control" style="width:90%" name="gid" id="gid">
		      <option value="">-- Select Garage --</option>
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
<label>Product Name</label>
        <div>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="pn" type="text" id="pn">
        </div>
</div>
</br>		
<div>
<label> Description</label>
        <div>
          <textarea name="pd" class="validate[required]  form-control" id="pd" style="width:90%"></textarea>
        </div>
</div>
</br>		
		
<div>
<label> Price</label>
        <div>
          <input class="validate[required,custom[onlyNumber]]  form-control" style="width:90%" name="ppr" type="text" id="ppr">
        </div>
</div>
</br>		
    <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

<jsp:include page="footer.jsp"></jsp:include>

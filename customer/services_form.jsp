<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Services</h2>   
                        
                    </div>
                </div>
<jsp:include page="val.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<form id="WFS_Riz" name="form1" method="post" action="services_insert.jsp">
  
  <div>
  <label>Garage ID </label>
      <div>
              <select class="validate[required]  form-control" style="width:90%" name="gid" id="gid">
		        <option value="">-- Select Garage --</option>
		        <%
		  ResultSet rs=s.stm.executeQuery("select * from garage_details");
		  while(rs.next())
		  {
		  %>
		        <option value="" value="<%=rs.getInt("g_id")%>">
		        <%=rs.getString("g_name")%>
		        </option>
		        <%
		  }
		  %>
          </select>
          </div>
</div>
</br>		  
<div>
  <label>Service Name</label>
      <div>    
          <input class="validate[required,custom[onlyLetter]]  form-control" style="width:90%" name="sn" type="text" id="sn">
        </div>
</div>
</br>
		
<div>
  <label>Service Description </label>
      <div>
          <input class="validate[required]  form-control" style="width:90%" name="sd" type="text" id="sd">
        </div>
</dir>
</br>		
<div>
  <label>Service Price</label>
      <div>    
          <input class="validate[required,custom[onlyNumber]]  form-control" style="width:90%"name="sp" type="text" id="sp">
        </div>
</div>
</br>		
    <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

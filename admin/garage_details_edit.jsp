<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Garage Details</h2>   
                        
                    </div>
                </div>
<html>
<body>
<jsp:include page="val.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from garage_details where g_id='"+a+"'");
rs.next(); 
%>
<form id="WFS_Riz" name="form1" method="post" action="garage_details_update.jsp">
<input name="gid" type="hidden" id="gid" value="<%=a%>">
  
<div>
<label>Vendor ID </label>
      <div>
        <input class="validate[required] form-control" style="width:90%" name="vid" type="text" id="vid" value="<%=rs.getString("v_id")%>">
      </div>
</div>
</br>	
  
<div>
<label>Garage Name </label>
      <div> 
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="gn" type="text" id="gn" value="<%=rs.getString("g_name")%>">
      </div>
</div>
</br>
	  
<div>
<label>Garage Description </label>
      <div>    
        <input class="validate[required] form-control" style="width:90%" name="gd" type="text" id="gd" value="<%=rs.getString("g_description")%>">
      </div>
</div>
</br>
	  
<div>
<label>Garage City </label>
      <div>    
        <input class="validate[required],custom[onlyLetter] form-control" name="gc" type="text" id="gc" value="<%=rs.getString("g_city")%>">
      </div>
</div>
</br>
	  
<div>
<label>Garage Address </label>
      <div>   
        <input class="validate[required] form-control" style="width:90%" name="ga" type="text" id="ga" value="<%=rs.getString("g_address")%>">
      </div>
</div>
</br>
	  
<div>
<label>Garage Latitude</label>
      <div>    
        <input class="validate[required] form-control" style="width:90%" name="glt" type="text" id="glt" value="<%=rs.getString("g_latitude")%>">
      </div>
</div>
</br>
	  
<div>
<label>Garage Longitude </label>
      <div>   
        <input class="validate[required] form-control" style="width:90%" name="glg" type="text" id="glg" value="<%=rs.getString("g_longitude")%>">
      </div>
</div>
</br>
	  
<div>
<label>Garage Status </label>
      <div>    
        <input class="validate[required] form-control" style="width:90%" name="gs" type="text" id="gs" value="<%=rs.getString("g_status")%>">
      </div>
</div>
</br>	  
    <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

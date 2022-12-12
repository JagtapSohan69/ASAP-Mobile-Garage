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
<html>
<body>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from request_details where r_id='"+a+"'");
rs.next(); 
%>
<form id="WFS_Riz" name="form1" method="post" action="request_details_update.jsp">
<input name="rid" type="hidden" id="rid" value="<%=a%>">
 <div>
 <label>Customer Id</label>
      <div>
        <input class="validate[required] form-control" style="width:90%" name="cid" type="text" id="cid" value="<%=rs.getString("c_id")%>">
      </div>
</div>
</br>	  
 <div>
 <label>Customer Latitude</label>
      <div>    
        <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="clt" type="text" id="clt" value="<%=rs.getString("c_latitude")%>">
      </div>
</div>
</br>	  
<div>
 <label>Customer Longitude</label>
      <div>
        <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="clg" type="text" id="clg" value="<%=rs.getString("c_longitude")%>">
      </div>
</div>
</br>
	  
 <div>
 <label>Garage Id</label>
      <div>   
        <input class="validate[required] form-control" style="width:90%" name="gid" type="text" id="gid" value="<%=rs.getString("g_id")%>">
      </div>
</div>
</br>
	  
 <div>
 <label>Request Date</label>
      <div>    
        <input class="validate[required,custom[date]] form-control" style="width:90%" name="rd" type="text" id="rd" value="<%=rs.getString("r_date")%>">
      </div>
</div>
</br>	  
 <div>
 <label>Request Time</label>
      <div>    
        <input class="validate[required] form-control" style="width:90%" name="rt" type="text" id="rt" value="<%=rs.getString("r_time")%>">
      </div>
</div>
</br>	  
<div>
 <label>Request Status</label>
      <div>
        <input class="validate[required] form-control" style="width:90%" name="rs" type="text" id="rs" value="<%=rs.getString("r_status")%>">
      </div>
</div>
</br>	  
	  <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

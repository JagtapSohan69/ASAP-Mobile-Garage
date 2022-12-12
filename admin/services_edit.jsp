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
<html>
<body>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from services where s_id='"+a+"'");
rs.next(); 
%>
<form id="WFS_Riz" name="form1" method="post" action="services_update.jsp">
<input name="sid" type="hidden" id="sid" value="<%=a%>">
  
 <div>
 <label>Garage ID</label>
      <div>
        <input class="validate[required]  form-control" style="width:90%" name="gid" type="text" id="gid" value="<%=rs.getString("g_id")%>">
      </div>
</div>
</br>	  
<div>
 <label>Service Name</label>
      <div>    
        <input class="validate[required,custom[onlyLetter]]  form-control" style="width:90%" name="sn" type="text" id="sn" value="<%=rs.getString("s_name")%>">
      </div>
</div>
</br>
	  
 <div>
 <label>Service Description</label>
      <div>
        <input class="validate[required]  form-control" style="width:90%" name="sd" type="text" id="sd" value="<%=rs.getString("s_description")%>">
      </div>
</div>
</br>	  
    <div>
 <label>Service Price</label>
      <div>
        <input class="validate[required,custom[onlyNumber]]  form-control" style="width:90%" name="sp" type="text" id="sp" value="<%=rs.getString("s_price")%>">
      </div>
</div>
</br>    
   <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

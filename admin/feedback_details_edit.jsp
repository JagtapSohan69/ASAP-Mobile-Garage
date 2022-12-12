<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Feedback Details</h2>   
                        
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
ResultSet rs=s.stm.executeQuery("select * from feedback_details where fd_id='"+a+"'");
rs.next(); 
%>
<form id="WFS_Riz" name="form1" method="post" action="feedback_details_update.jsp">
<input name="fd_id" type="hidden" id="fd_id" value="<%=a%>">

<div>
<label>Feedback From </label>
<div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="fdf" type="text" id="fdf" value="<%=rs.getString("fd_from")%>">
      </div>
</div>
</br>	  
    <div>
<label>Feedback TO </label>
<div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="fdt" type="text" id="fdt" value="<%=rs.getString("fd_to")%>">
      </div>
</div>
</br>	  
    <div>
<label>Feedback Message </label>
<div>
        <input class="validate[required] form-control" style="width:90%" name="fdm" type="text" id="fdm" value="<%=rs.getString("feedback")%>">
      </div>
</div>
</br>
	  
   <div>
<label>Sent Date </label>
<div>
        <input class="validate[required,custom[date]] form-control" style="width:90%" name="sd" type="text" id="sd" value="<%=rs.getString("s_date")%>">
      </div>
</div>
</br>	  
    <div>
<label>Status </label>
<div>
        <input  class="validate[required,custom[date]] form-control" style="width:90%" name="st" type="text" id="st" value="<%=rs.getString("status")%>">
      </div>
</div>
</br>
    
	<div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

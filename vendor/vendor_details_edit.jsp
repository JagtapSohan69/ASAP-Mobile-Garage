<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Vendor Details</h2>   
                        
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
ResultSet rs=s.stm.executeQuery("select * from vendor_details where v_id='"+a+"'");
rs.next(); 
%>
<form id="WFS_Rix" name="form1" method="post" action="vendor_details_update.jsp">
<input name="vid" type="hidden" id="vid" value="<%=a%>">
  
  <div>
  <label>First Name</label>
  		<div>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="fn" type="text" id="fn" value="<%=rs.getString("v_fname")%>">
        </div>
</div>
</br>     
<div>
  <label>Last Name</label>
  		<div>      
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ln" type="text" id="ln" value="<%=rs.getString("v_lname")%>">
        </div>
</div>
</br>		
<div>
  <label>Mobile no</label>
  		<div>
          <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="mn" type="text" id="mn" value="<%=rs.getString("v_mobile")%>" maxlength="12">
        </div>
</div>
</br>		
<div>
  <label>Alternate Mobile</label>
  		<div>      
          <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="amn" type="text" id="amn" value="<%=rs.getString("v_alternatemobile")%>" maxlength="12">
        </div>
</div>
</br>		
<div>
  <label>Email</label>
  		<div>      
          <input class="validate[required,custom[email] form-control" style="width:90%" name="em" type="text" id="em" value="<%=rs.getString("v_email")%>">
        </div>
</div>
</br>		
<div>
  <label>Profile Pic</label>
  		<div>      
          <input class="validate[required] form-control" style="width:90%" name="pp" type="text" id="pp" value="<%=rs.getString("v_profilepic")%>">
        </div>
</div>
</br>		
        <div align="center">
          <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
          <input class="btn btn-default" type="reset" name="Reset" value="Reset">
        </div>

</form>


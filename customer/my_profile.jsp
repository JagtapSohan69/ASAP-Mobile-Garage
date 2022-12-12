<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>My Profile</h2>   
                        
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
String rz=session.getAttribute("uname").toString();
ResultSet rs=s.stm.executeQuery("select * from customer_details where c_email='"+rz+"'");
rs.next(); 
%>
<div><img src="../uploads/<%=rs.getString("c_profilepic")%>" width="180px" height="180px"/></div>
<div style="margin-left:35px; margin-bottom:20px;"><a href="customer_select_photo.jsp">Change Picture</a></div>

<form id="WFS_Riz" name="form1" method="post" action="customer_details_update.jsp">
<input name="cid" type="hidden" id="cid" value="<%=rs.getInt("c_id")%>">
  
  <div>
  <label>First name</label>
  <div>
        <input <input class="validate[required,custom[onlyLetter]]  form-control" style="width:90%" name="fn" type="text" id="fn" value="<%=rs.getString("c_fname")%>">
      </div>
</div>
</br>
    
  <div>
  <label>Last name</label>
  <div>
        <input <input class="validate[required,custom[onlyLetter]]  form-control" style="width:90%" name="ln" type="text" id="ln" value="<%=rs.getString("c_lname")%>">
      </div>
</div>
</br>
	  
	   
  <div>
  <label>Mobile No</label>
  <div>
        <input  <input class="validate[required,custom[onlyNumber],length[10,11]]  form-control" style="width:90%" name="mn" type="text" id="mn" value="<%=rs.getString("c_mobile")%>">
      </div>
</div>
</br>
    
  <div>
  <label>Email</label>
  <div>
        <input class="validate[required,custom[email]  form-control" readonly="" style="width:90%" name="em" type="text" id="em" value="<%=rs.getString("c_email")%>">
      </div>
</div>
</br>
	  
    
  <div>
  <label>DOB</label>
  <div>
        <input class="form-control" required min="1980-01-01" max="2003-12-31" style="width:90%" name="dob" type="date" id="dob" value="<%=rs.getString("c_dob")%>">
      </div>
</div>
</br>
	  
   
  <div>
  <label>City</label>
  <div>
        <input class="validate[required,custom[onlyLetter]]  form-control" style="width:90%" name="ct" type="text" id="ct" value="<%=rs.getString("c_city")%>">
      </div>
</div>
</br>

  
  
	  <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default"type="reset" name="Reset" value="Reset">
      </div>
</form>

<jsp:include page="footer.jsp"></jsp:include>

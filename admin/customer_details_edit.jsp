<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Bank Details</h2>   
                        
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
ResultSet rs=s.stm.executeQuery("select * from customer_details where c_id='"+a+"'");
rs.next(); 
%>
<form id="WFS_Riz" name="form1" method="post" action="customer_details_update.jsp">
<input name="cid" type="hidden" id="cid" value="<%=a%>">
  
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
        <input class="validate[required,custom[email]  form-control" style="width:90%" name="em" type="text" id="em" value="<%=rs.getString("c_email")%>">
      </div>
</div>
</br>
	  
    
  <div>
  <label>DOB</label>
  <div>
        <input class="validate[required,custom[date]]  form-control" style="width:90%" name="dob" type="text" id="dob" value="<%=rs.getString("c_dob")%>">
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

  
  <div>
  <label>Profile Pic</label>
  <div>
        <input class="validate[required]  form-control" style="width:90%" name="pp" type="text" id="pp" value="<%=rs.getString("c_profilepic")%>">
      </div>
</div>
</br>	  
	  <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default"type="reset" name="Reset" value="Reset">
      </div></td>
    </tr>
  </table>
</form>

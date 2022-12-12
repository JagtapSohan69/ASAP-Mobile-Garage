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
<jsp:include page="val.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<form id="WFS_Riz" name="form1" method="post" action="garage_details_insert.jsp">
  
  <div>
  <label>Vendor ID </label>
  <div>
            <select readonly class="validate[required] form-control" style="width:90%" name="vid" id="vid">
	         <!-- <option value="">-- Select Vendor --</option> -->
	          <%
			  String rz=session.getAttribute("uname").toString();
		  ResultSet rs=s.stm.executeQuery("select * from vendor_details where v_email='"+rz+"'");
		  while(rs.next())
		  {
		  %>
	          <option value="<%=rs.getInt("v_id")%>"><%=rs.getString("v_fname")%> <%=rs.getString("v_lname")%></option>
	          <%
		  }
		  %>
          </select>
        </div>
	</div>
	</br>
		
    <div>
  <label>Garage Name </label>
  <div>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="gn" type="text" id="gn">
        </div>
</div>
</br>
		
    <div>
  <label> Description </label>
  <div>
          <textarea name="gd" class="validate[required] form-control" id="gd" style="width:90%"></textarea>
      </div>
	</div>
	</br>
		
    <div>
  <label> City </label>
  <div>
          <input class="validate[required],custom[onlyLetter] form-control" style="width:90%" name="gc" type="text" id="gc">
        </div>
	</div>
	</br>
		
    <div>
  <label> Address / LandMark </label>
  <div>
          <textarea name="ga" class="validate[required] form-control" id="ga" style="width:90%"></textarea>
      </div>
</div>
</br>
		
<!-- <div>
  <label>Garage Latitude </label>
  <div>
          <input class="validate[required] form-control" style="width:90%" name="glt" type="text" id="glt">
        </div>
</div>
</br>		
     <div>
  <label>Garage Longitude </label>
  <div>
          <input class="validate[required] form-control" style="width:90%" name="glg" type="text" id="glg">
        </div>
</div>
</br>		 -->
     <div>
  <label> Status </label>
  <div>
          <input class="validate[required] form-control" readonly="" value="Open" style="width:90%" name="gs" type="text" id="gs">
        </div>
	</div>
</br>		
    <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

<jsp:include page="footer.jsp"></jsp:include>
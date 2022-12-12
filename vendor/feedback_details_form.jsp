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
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<form id="WFS_Riz" name="form1" method="post" action="feedback_details_insert.jsp">

<div>
<label>Feedback From</label> 
        <div>
            <select class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="fdf" id="fdf">
	          <option value="">-- Select customer --</option>
	          <%
		  ResultSet rs=s.stm.executeQuery("select * from customer_details");
		  while(rs.next())
		  {
		  %>
	          <option value="" value="<%=rs.getInt("c_id")%>">
	          <%=rs.getString("c_fname")%><%=rs.getString("c_lname")%>
	          </option>
	          <%
		  }
		  %>
          </select>
        </div>
</div>
</br>		
    
<div>
<label>Feedback To </label>
        <div>
            <select class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="fdt" id="fdt">
	          <option value="">-- Select Vendor --</option>
	          <%
		  ResultSet rs1=s.stm.executeQuery("select * from vendor_details");
		  while(rs1.next())
		  {
		  %>
	          <option value="" value="<%=rs1.getInt("v_id")%>">
	          <%=rs1.getString("v_fname")%><%=rs1.getString("v_lname")%>
	          </option>
	          <%
		  }
		  %>
          </select>
        </div>
</div>
</br>

    <div>
<label>Feedback Message</label>
        <div>
          <input class="validate[required] form-control" style="width:90%" name="fdm" type="text" id="fdm">
        </div>
		</div>
		</br>
		
   <div>
<label>Sent date </label>
        <div>
          <input class="validate[required,custom[date]] form-control" style="width:90%" name="sd" type="date" id="sd">
        </div>
</div>
</br>
		
  <div>
<label>Status </label>
        <div>
          <input class="validate[required,custom[date]] form-control" style="width:90%" name="st"type="text" id="st">
        </div>
</div>
</br>		
    <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Notices</h2>   
                        
                    </div>
                </div>
<jsp:include page="val.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<form id="WFS_Riz" name="form1" method="post" action="notices_insert.jsp">
 
 <div>
 <label>Notice To</label>
        <div>
            <select class="validate[required] form-control" style="width:90%" name="nt" id="nt">
	          <option value="">-- Select Vendor --</option>
	          <%
		  ResultSet rs=s.stm.executeQuery("select * from vendor_details");
		  while(rs.next())
		  {
		  %>
	          <option value="" value="<%=rs.getInt("v_id")%>">
	          <%=rs.getString("v_fname")%><%=rs.getString("v_lname")%>
	          </option>
	          <%
		  }
		  %>
          </select>
        </div>
</div>
</br>		
<div>
 <label>Notice</label>
        <div>   
          <input class="validate[required] form-control" style="width:90%" name="n" type="text" id="n">
        </div>
</div>
</br>		
<div>
 <label>Notice Date</label>
        <div>    
          <input class="validate[required,custom[date]] form-control" style="width:90%" name="nd" type="date" id="nd">
        </div>
</div>
</br>		
<div>
 <label>Notice Status</label>
        <div>    
          <input class="validate[required] form-control" style="width:90%" name="ns" type="text" id="ns">
        </div>
</div>
</br>		
    <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

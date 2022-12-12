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
	          <option value="<%=rs.getInt("v_id")%>"><%=rs.getString("v_fname")%> <%=rs.getString("v_lname")%></option>
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
          <textarea name="n" rows="5" class="validate[required] form-control" id="n" style="width:90%"></textarea>
        </div>
</div>
</br>	

        <%@page import="java.util.Date"%>
		  <%
		  Date d=new Date();
		  int dd,mm,yy;
		  dd=d.getDate();
		  mm=d.getMonth()+1;
		  yy=d.getYear()+1900;
		  String td=dd+"-"+mm+"-"+yy;
		  %>	
<div>
 <label>Notice Date</label>
        <div>    
          <input class="validate[required,custom[date]] form-control" style="width:90%" name="nd" type="text" value="<%=td%>" readonly="" id="nd">
        </div>
</div>
</br>		
		
    <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>


<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Feedback</h2>   
                        
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
            <select readonly class="validate[required] form-control" style="width:90%" name="fdf" id="fdf">
	         <!-- <option value="">-- Select customer --</option> -->
	          <%
			  String rz=session.getAttribute("uname").toString();
		  ResultSet rs=s.stm.executeQuery("select * from customer_details where c_email='"+rz+"'");
		  while(rs.next())
		  {
		  %>
	          <option  value="<%=rs.getString("c_email")%>"><%=rs.getString("c_fname")%> <%=rs.getString("c_lname")%></option>
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
            <select class="validate[required] form-control" style="width:90%" name="fdt" id="fdt">
	          <option value="">-- Select Vendor --</option>
	          <%
		  ResultSet rs1=s.stm.executeQuery("select * from vendor_details v, garage_details g where g.v_id=v.v_id");
		  while(rs1.next())
		  {
		  %>
	          <option value="<%=rs1.getString("v_email")%>"><%=rs1.getString("v_fname")%> <%=rs1.getString("v_lname")%> [ Garage: <%=rs1.getString("g_name")%> ]</option>
	          <%
		  }
		  %>
          </select>
        </div>
</div>
</br>

    <div>
<label>Feedback</label>
        <div>
          <textarea name="fdm" rows="5" class="validate[required] form-control" id="fdm" style="width:90%"></textarea>
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
<label>Sent date </label>
        <div>
          <input class="validate[required,custom[date]] form-control" readonly="" value="<%=td%>" style="width:90%" name="sd" type="text" id="sd">
        </div>
</div>
</br>
		
  <div>
<label>Status </label>
        <div>
          <input class="validate[required] form-control" readonly="" value="New" style="width:90%" name="st"type="text" id="st">
        </div>
</div>
</br>		
    <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Bill Details</h2>   
                        
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
ResultSet rs=s.stm.executeQuery("select * from bill_details where bl_id='"+a+"'");
rs.next(); 
%>
<form id="WFS_Riz" name="form1" method="post" action="bill_details_update.jsp">
<input type="hidden" name="blid" value="<%=a%>"/>

 <div>
 <label>Garage Id </label>
 <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="gid" type="text" id="gid" value="<%=rs.getString("g_id")%>">
      </div>
</div>
</br>	  
    <div>
 <label>Customer Id </label>
 <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="cid" type="text" id="cid" value="<%=rs.getString("c_id")%>">
      </div>
</div>
</br>
	  
 <div>
 <label>Bill Amount</label>
 <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ba" type="text" id="ba" value="<%=rs.getString("b_amount")%>">
      </div>
</div>
</br>	  
     <div>
 <label>Date </label>
 <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="bd" type="text" id="bd" value="<%=rs.getString("b_date")%>">
      </div>
</div>
</br>
	  
 <div>
 <label>Status </label>
 <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="s" type="text" id="s" value="<%=rs.getString("status")%>">
      </div>
</div>
</br>
   
   <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default"type="reset" name="Reset" value="Reset">
      </div>
</form>

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
<html>
<body>
<jsp:include page="val.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="asappk.dbconnect"%>
<jsp:useBean id="s" class="asappk.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
ResultSet rs=s.stm.executeQuery("select * from notices where n_id='"+a+"'");
rs.next(); 
%>
<form id="WFS_Riz" name="form1" method="post" action="notices_update.jsp">
<input name="nid" type="hidden" id="nid" value="<%=a%>">
<div>
	<label>Notice To</label>
     <div>
        <input class="validate[required] form-control" style="width:90%" name="nt" type="text" id="nt" value="<%=rs.getString("n_to")%>">
      </div>
</div>
</br>	  
<div>
	<label>Notice</label>
     <div>
        <input class="validate[required] form-control" style="width:90%" name="n" type="text" id="n" value="<%=rs.getString("notices")%>">
      </div>
</div>
</br>
	  
<div>
	<label>Notice Date</label>
     <div>    
        <input class="validate[required,custom[date]] form-control" style="width:90%" name="nd" type="text" id="nd" value="<%=rs.getString("s_date")%>">
      </div>
</div>
</br>
	  
<div>
	<label>Notice Status</label>
     <div>
        <input class="validate[required] form-control" style="width:90%" name="ns" type="text" id="ns" value="<%=rs.getString("n_status")%>">
      </div>
</div>
</br>	  
   <div align="center">
        <input class="btn btn-primary"  type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

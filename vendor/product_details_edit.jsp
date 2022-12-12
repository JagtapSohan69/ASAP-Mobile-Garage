<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Product Details</h2>   
                        
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
ResultSet rs=s.stm.executeQuery("select * from product_details where p_id='"+a+"'");
rs.next(); 
%>
<form id="WFS_Riz" name="form1" method="post" action="product_details_update.jsp">
<input name="pid" type="hidden" id="pid" value="<%=a%>">
 
 <div>
 <label>Garage ID </label>
      <div>
        <input class="validate[required]  form-control" style="width:90%" name="gid" type="text" id="gid" value="<%=rs.getString("g_id")%>">
      </div>
</div>
</br>	  
<div>
 <label>Product Name </label>
      <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="pn" type="text" id="pn" value="<%=rs.getString("p_name")%>">
      </div>
</div>
</br>
	  
<div>
 <label>Product Description </label>
      <div>
        <input class="validate[required]  form-control" style="width:90%" name="pd" type="text" id="pd" value="<%=rs.getString("p_description")%>">
      </div>
</div>
</br>	  
<div>
 <label>Profile Photo </label>
      <div>
        <input class="validate[required  form-control" style="width:90%" name="pp" type="text" id="pp" value="<%=rs.getString("p_photo")%>">
      </div>
</div>
</br>	  
<div>
 <label>Product Price</label>
      <div>
        <input class="validate[required,custom[onlyNumber]]  form-control" style="width:90%" name="ppr" type="text" id="ppr" value="<%=rs.getString("p_price")%>">
      </div>
</div>
</br>	  
    <div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

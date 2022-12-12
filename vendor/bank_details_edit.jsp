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
ResultSet rs=s.stm.executeQuery("select * from bank_details where b_id='"+a+"'");
rs.next(); 
%>
<form id="WFS_Riz" name="form1" method="post" action="bank_details_update.jsp">
<input name="bid" type="hidden" id="bid" value="<%=a%>">
 
 <div>
 <label>Bank Name</label>
     <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="bn" type="text" id="bn" value="<%=rs.getString("b_name")%>">
      </div>
 </div>	  
 </br>
 <div><label>Ac Holder Name </label>
 	<div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="ahn" type="text" id="ahn" value="<%=rs.getString("b_accountholder")%>">
      </div>
</div>
</br>	  
 <div>
 <label>Account Number</label>
     <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="acn" type="text" id="acn" value="<%=rs.getString("b_accountnumber")%>">
      </div>
</div>
</br>	  
    <div>
 <label>Card Number</label>
     <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="cn" type="text" id="cn" value="<%=rs.getString("b_cardnumber")%>">
      </div>
</div>
</br>
 <div>
 <label>Pin</label>
     <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="pin" type="text" id="pin" value="<%=rs.getString("b_pin")%>">
      </div>
</div>
	</br>  
 <div>
 <label>Amount</label>
     <div>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="amt" type="text" id="amt" value="<%=rs.getString("b_amount")%>">
      </div>
</div>  
</br>  
    <div align="center">
        <input type="submit" class="btn btn-primary" name="Submit" value="Submit">
        <input type="reset"  class="btn btn-default"name="Reset" value="Reset">
      </div>
</form>
</body>
</html>
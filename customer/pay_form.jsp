<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Payment Form</h2>   
                        
                    </div>
                </div>
<jsp:include page="val.jsp"></jsp:include>

<% 
String bid=request.getParameter("bid");
String vid=request.getParameter("vid");
String amt=request.getParameter("amt");
%>

<form id="WFS_Riz" name="form1" method="post" action="pay.jsp">
<input type="hidden" name="bid" value="<%=bid%>" />
<input type="hidden" name="vid" value="<%=vid%>" />
    <div>
	   <lable>Payment Amount</lable>
        <input class="validate[required] form-control" readonly="" value="<%=amt%>" style="width:90%" name="amt" type="text" id="amt">
     </div>
	  </br>
	  
      
   <div>
	   <lable>Card No.</lable>
        <input name="cn" class="validate[required,custom[onlyNumber],length[12,12]] form-control" maxlength="12" style="width:90%" type="text" id="cn">
      </div>
	  </br>
   <div>
	   <lable>Pin</lable>
        <input name="pin" class="validate[required,custom[onlyNumber],length[4,4]] form-control" maxlength="4" style="width:90%" type="password" id="pin">
      </div>
	  </br>

     <div align="center">
	<input type="submit" class="btn btn-primary" name="Submit" value="Pay">
      <input type="reset" class="btn btn-default"  name="Reset" value="Reset">
	  </div>
</form>

<jsp:include page="footer.jsp"></jsp:include>
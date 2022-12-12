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
<jsp:include page="val.jsp"></jsp:include>

<% String rz=session.getAttribute("uname").toString(); %>

<form id="WFS_Riz" name="form1" method="post" action="bank_details_insert.jsp">
    <div>
	   <lable>Account Holder Name</lable>
        <input class="validate[required] form-control" readonly="" value="<%=rz%>" style="width:90%" name="ahn" type="text" id="ahn">
     </div>
	  </br>
	  
      <div>
	   <lable>Bank Name</lable>
        <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%" name="bn" type="text" id="bn">
      </div>
	  </br>
   
   <div>
	   <lable>Account No.</lable>
        <input class="validate[required,custom[onlyNumber],length[16,16]] form-control" maxlength="16" style="width:90%" name="acn" type="text" id="acn">
	  </div>
	  </br>
   <div>
	   <lable>Card No.</lable>
        <input name="cn" class="validate[required,custom[onlyNumber],length[12,12]] form-control" maxlength="12" style="width:90%" type="text" id="cn">
      </div>
	  </br>
   <div>
	   <lable>Pin</lable>
        <input name="pin" class="validate[required,custom[onlyNumber],length[4,4]] form-control" maxlength="4" style="width:90%" type="text" id="pin">
      </div>
	  </br>
  <!-- <div>
	   <lable>Amount</lable>
        <input name="amt" class="validate[required,custom[onlyNumber],length[4,6]] form-control" style="width:90%" type="text" id="amt">
      </div></br> -->
     <div align="center">
	<input type="submit" class="btn btn-primary" name="Submit" value="Submit">
      <input type="reset" class="btn btn-default"  name="Reset" value="Reset">
	  </div>
</form>

<jsp:include page="footer.jsp"></jsp:include>
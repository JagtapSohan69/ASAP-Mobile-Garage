<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Change Password</h2>   
                        
                    </div>
                </div>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="changepass.jsp">
 <div class="box-body">
 
     <div class="form-group">
	 <label for="exampleInputEmail1">Old Password</label>
	 <strong>     <input name="opass" class="validate[required] form-control" style="width:90%" type="password" id="opass">
       </strong></div>
   
     <div class="form-group">
	 <label for="exampleInputEmail1">New Password</label>
	 <strong>     <input name="npass" class="validate[required] form-control" style="width:90%" type="password" id="npass">
        </strong></div>
   
     <div class="form-group">
	 <label for="exampleInputEmail1">Confirm Password</label>
	 <strong>     <input name="cpass" class="validate[required] form-control" style="width:90%" type="password" id="cpass">
        </strong></div>
   
    
	<div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Change">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
  </div>
</form>

<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Vendor Details</h2>   
                        
                    </div>
                </div>
<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="vendor_details_insert.jsp">
  
<div>
<label>First Name</label>
       <div>
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%"name="fn" type="text" id="fn">
        </div>
</div>
</br>		
<div>
<label>Last Name</label>
       <div>      
          <input class="validate[required,custom[onlyLetter]] form-control" style="width:90%"name="ln" type="text" id="ln">
        </div>
</div>
</br>		

<div>
<label>Mobile no</label>
       <div>     
          <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="mn" type="text" id="mn" maxlength="12">
        </div>
</div>
</br>		

<div>
<label>Alternate Mobile no</label>
       <div>      
          <input class="validate[required,custom[onlyNumber]] form-control" style="width:90%" name="amn" type="text" id="amn" maxlength="12">
        </div>
</div>
</br>		
<div>
<label>Email</label>
       <div>      
          <input class="validate[required,custom[email] form-control" style="width:90%" name="em" type="text" id="em">
        </div>
</div>
</br>		

<div>
<label>Profile Pic</label>
       <div>      
          <input class="validate[required] form-control" style="width:90%" name="pp" type="text" id="pp">
        </div>
</div>
</br>		
        <div align="center">
          <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
          <input class="btn btn-default" type="reset" name="Reset" value="Reset">
        </div>
 
</form>


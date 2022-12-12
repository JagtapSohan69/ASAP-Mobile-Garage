<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
 <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Photo Upload</h2>   
                        
                    </div>
                </div>
				
          <!-- form start -->
			
<jsp:include page="val.jsp"></jsp:include> 
<form id="WFS_Riz" name="form1" method="post" enctype="multipart/form-data" action="vendor_upload_photo.jsp">
   <div class="box-body">
   
        <div class="form-group">
      <label for="exampleInputEmail1">Upload Photo </label>
    <input name="photo" class="validate[required] form-control" required type="file" id="photo">
   </div>
  
	<div align="center">
        <input class="btn btn-primary" type="submit" name="Submit" value="Submit">
        <input class="btn btn-default" type="reset" name="Reset" value="Reset">
      </div>
</form>

<jsp:include page="footer.jsp"></jsp:include> 	


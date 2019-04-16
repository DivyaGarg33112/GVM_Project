<jsp:include page="AdminHeader.jsp"/>

<br/>
<!-- Content -->
<div class="container">
<form class="form-horizontal" action="addProduct" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-2" for="productName">Product Name :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="productName" name="productName">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="price">Price:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="price" name="price">
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="image">Image:</label>
    <div class="col-sm-10">
    <input type="file" class="form-control" id="image" name="image">
    </div>
  </div>
    <button type="submit" class="btn btn-default">Add Product</button>
</form>

 </div>
 

<br/><br/><br/>
<jsp:include page="Footer.jsp"/>	

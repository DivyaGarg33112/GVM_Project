<jsp:include page="AdminHeader.jsp"/>

<br/>
<!-- Content -->
<div class="container">
<form class="form-horizontal" action="updateCategoryProcess" method="post">

 <div class="form-group">
    <label class="control-label col-sm-2" for="categoryId">Category Id :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="categoryId" name="categoryId" value="${requestScope.categoryObj.categoryId}" readonly="readonly">
    </div>
 
  <div class="form-group">
    <label class="control-label col-sm-2" for="categoryName">Category Name :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="categoryName" name="categoryName" value="${requestScope.categoryObj.categoryName}">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="desc">Category Description:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="desc" name="desc" value="${requestScope.categoryObj.categoryDesc}">
    </div>
  </div>
    <button type="submit" class="btn btn-default">Update Category</button>
</form>

 </div>
 

<br/><br/><br/>
<jsp:include page="Footer.jsp"/>	

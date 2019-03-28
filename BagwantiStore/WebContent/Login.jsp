<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="Header.jsp"/>

<br/>
<!-- Content -->
<div class="container">

<c:if test="${not empty msg}">
<div class="alert alert-warning">
	 ${msg} 
	
</div>
</c:if>

<form class="form-horizontal" action="validateUser" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email address:</label>
    <div class="col-sm-10">
    <input type="email" class="form-control" id="email" name="email">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10">
    <input type="password" class="form-control" id="pwd" name="pwd">
    </div>
  </div>
   
  <button type="submit" class="btn btn-default">Sign In</button>
</form>

 </div>
 

<br/><br/><br/>
<jsp:include page="Footer.jsp"/>	

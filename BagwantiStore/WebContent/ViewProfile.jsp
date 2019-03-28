<jsp:include page="UserHeader.jsp"/>


<div class="container table-responsive">          
  <table class="table table-striped">
      <tr>
      	<td>Email </td>
      	<td>${sessionScope.user.email}</td>
      </tr>
      <tr>
      	<td>First Name </td>
      	<td>${sessionScope.user.firstName}</td>
      </tr>
      <tr>
      	<td>Last Name </td>
      	<td>${sessionScope.user.lastName}</td>
      </tr>
      <tr>
      	<td>Gender </td>
      	<td>${sessionScope.user.gender}</td>
      </tr>
  </table>
  </div>


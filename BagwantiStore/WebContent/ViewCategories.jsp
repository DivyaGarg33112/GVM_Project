<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="AdminHeader.jsp"/>

<br/>
<!-- Content -->
<div class="container">

	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg}
		</div>
	</c:if>
	<h1>List of Categories</h1>
	<c:choose>
		<c:when test="${cList.size() eq 0}">
			No Categories Found...
		</c:when>
		<c:otherwise>
			<table class="table table-hover">
				<tr>
		<!-- 			<th>Category Id</th> -->
					<th>Category Name</th>
					<th>Category Description</th>
				</tr>
				<c:forEach items="${cList}" var="categoryObj">
					<tr>
						<%-- <td>${categoryObj.categoryId}</td> --%>
						<td>${categoryObj.categoryName}</td>
						<td>${categoryObj.categoryDesc}</td>
						<td>
							<a href="deleteCategory?catId=${categoryObj.categoryId}"><i class="fa fa-trash" aria-hidden="true"></i></a>
						</td>
						<td>
							<a href="updateCategory?catId=${categoryObj.categoryId}"><i class="fa fa-edit" aria-hidden="true"></i></a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
 </div>
 

<br/><br/><br/>
<jsp:include page="Footer.jsp"/>	

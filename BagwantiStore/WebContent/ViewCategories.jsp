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
					<th>Category Id</th>
					<th>Category Name</th>
					<th>Category Description</th>
				</tr>
				<c:forEach items="${cList}" var="categoryObj">
					<tr>
						<td>${categoryObj.categoryId}</td>
						<td>${categoryObj.categoryName}</td>
						<td>${categoryObj.categoryDesc}</td>
						<td>
							Delete
						</td>
						<td>
							Update
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
 </div>
 

<br/><br/><br/>
<jsp:include page="Footer.jsp"/>	

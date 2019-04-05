<jsp:include page="AdminHeader.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form>

	Select Category :
	
	<select  name="category">
		<option value="none">----Select category---</option>
		<c:forEach items="${cList}" var="cObj">
		<option value="${cObj.categoryId}">${cObj.categoryName}</option>
		</c:forEach>		
	</select>
	

</form>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@include file="Header.jsp"%>

<h2 align="center">Category Page</h2>

<form action="<c:url value="/updateCategory"/>" method="post">

<table align="center">
	<tr>
		<td colspan="2">Update Category</td>
	</tr>
	
	<tr>
		<td>Category Id</td>
		<td><input type="text" name="catId" value="${category.categoryId}" readonly/></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName" value="${category.categoryName}"/></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		<td><input type="text" name="catDesc" value="${category.categoryDesc}"/></td>
	</tr>
	<tr>
		<td colspan="2"><center><input type="submit" value="Update Category"/></center></td>
	</tr>
	
</table>
</form>

</body>
</html>
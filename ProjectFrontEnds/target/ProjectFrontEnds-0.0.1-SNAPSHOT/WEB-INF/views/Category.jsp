<%@ page language="java" contentType="text/html"%>
<html>
<head>
<%@include file="Header.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body background="resources/images/bg3.jpg">


<form action="<c:url value="/InsertCategory"/>" method="post">
<table class="table table-bordered" width="50%" align="center" >

	<tr bgcolor="sky blue">
		<td colspan="2"><center>Category Info</center></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName"/></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		<td><input type="text" name="catDesc"/></td>
	</tr>
	<tr>
		<td colspan="2"><center><input type="submit" value="Save Category"/></center></td>
	</tr>
	
</table>

 <div class="container">
 <h2 style="color: #448aff;text-align: center;"> Category Table </h2>

 <hr>

<table class="table table-striped">


	<thead>
	    <tr class="row-name">
		<th>Category ID</th>
		<th>Category Name</th>
		<th>Category Desc</th>
		<th>Operation </th>
	</tr>
	</thead>
	<c:forEach items="${categoryList}" var="category">
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		<td>
			<a href="<c:url value="/editCategory/${category.categoryId}"/>">Edit</a>
			<a href="<c:url value="/deleteCategory/${category.categoryId}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
	
</table>
</div>

</form>
</body>
</html>

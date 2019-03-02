<%@ page language="java" contentType="text/html"%>
<html>
<head>


<%@include file="Header.jsp"%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body background="resources/images/bg3.jpg">



<form action="<c:url value="/InsertSupplier"/>" method="post">

<table class="table table-bordered" width="50%" align="center" >
	<tr bgcolor="sky blue">
		<td colspan="2"><center>Supplier Info</center></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supplierName"/></td>
	</tr>
	<tr>
		<td>Supplier Desc</td>
		<td><input type="text" name="supplierDesc"/></td>
	</tr>
	<tr>
		<td colspan="2"><center><input type="submit" value="Save Supplier"/></center></td>
	</tr>
	
</table>

<div class="container">
 <h2 style="color: #448aff;text-align: center;"> Supplier Table </h2>

 <hr>


<table class="table table-striped">
	<thead>
		<th>Supplier ID</th>
		<th>Supplier Name</th>
		<th>Supplier Desc</th>
		<th>Operation </th>
		</thead>
	
	<c:forEach items="${supplierList}" var="supplier">
	<tr>
		<td>${supplier.supplierId}</td>
		<td>${supplier.supplierName}</td>
		<td>${supplier.supplierDesc}</td>
		<td>
			<a href="<c:url value="/editSupplier/${supplier.supplierId}"/>">Edit</a>
			<a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
	
</table>

</form>
</body>
</html>

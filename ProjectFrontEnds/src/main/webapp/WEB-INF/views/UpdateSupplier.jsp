<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@include file="Header.jsp"%>

<h2 align="center">Supplier Page</h2>

<form action="<c:url value="/updateSupplier"/>" method="post">

<table align="center">
	<tr>
		<td colspan="2">Update Supplier</td>
	</tr>
	
	<tr>
		<td>Supplier Id</td>
		<td><input type="text" name="supplierId" value="${supplier.supplierId}" readonly/></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supplierName" value="${supplier.supplierName}"/></td>
	</tr>
	<tr>
		<td>Supplier Desc</td>
		<td><input type="text" name="supplierDesc" value="${supplier.supplierDesc}"/></td>
	</tr>
	<tr>
		<td colspan="2"><center><input type="submit" value="Update Supplier"/></center></td>
	</tr>
	
</table>
</form>

</body>
</html>
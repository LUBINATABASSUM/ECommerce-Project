<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>

<c:if test="${!sessionScope.loggedIn}">
         <ul class="nav navbar-nav">
         
    <li><a href="login">Login</a></li>
   <li><a href="register">Register</a></li>
     </ul>
</c:if>
<c:if test="${sessionScope.loggedIn}">
   <c:if test="${sessionScope.role=='ROLE_ADMIN'}">
   <ul class="nav navbar-nav">
      <li>
<a href="<c:url value="/category"/>">Category</a></li>
   <li>
<a href="supplier">Supplier</a></li>
   <li>
<a href="<c:url value="/product"/>">Product</a></li>
    </ul>
</c:if>
<c:if test="${sessionScope.role=='ROLE_USER'}">
    <ul class="nav navbar-nav">
      <li>
<a href="<c:url value="/productDisplay"/>">Product Catalog</a></li>
    <li>
<a href="<c:url value="/cart"/>">Cart</a></li>
   </ul>
   
</c:if>
<ul class="nav navbar-nav navbar-right">
   <li>
<a href="<c:url value="/perform_logout"/>">Logout</a></li>
</ul>

</c:if>
</div>
</nav>

</body>

</html>
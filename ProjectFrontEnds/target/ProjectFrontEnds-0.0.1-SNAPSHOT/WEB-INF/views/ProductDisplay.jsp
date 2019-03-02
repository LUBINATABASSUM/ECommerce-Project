<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  
</head>
<body background="resources/images/bg4.jpg">
<%@include file="Header.jsp"%>

<div class="row">
	
 <c:forEach items="${productList}" var="product">

     <div class="col-md-4 col-md-4">
        <div class="thumbnail">"
            <a href="<c:url value="/totalProductDisplay/${product.productId}"/>" class="btn btn-primary col-xs-12" role="button">Click for Large</a>
      <img src="<c:url value="/resources/images/${product.productId}.jpg"/>"  width="300" height="300"/>
           <div class="caption">
      <p><b>Product Name :${product.productName}</b></p>
      <p><b>Price : ${product.price}</b></p>
      </div>
     
      </div>
      </div>
      
     
     
</c:forEach>
</div>

<%@include file="Footer.jsp" %>

</body>
</html>
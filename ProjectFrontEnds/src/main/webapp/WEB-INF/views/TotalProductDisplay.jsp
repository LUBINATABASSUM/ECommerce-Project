<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="/resources/images/bg3.jpg">
<%@include file="Header.jsp"%>
<div class="card">
	<div class="row">
		<aside class="col-sm-5 border-right">
<article class="gallery-wrap"> 
<div class="img-big-wrap">
   <div class="container">




    <tr>
        <td rowspan="7">
        <img src="<c:url value="/resources/images/${product.productId}.jpg"/>" width=150 height=150/>
        </td>
        </div>
        </article>
        </aside>
      </tr>  
        <aside class="col-sm-7">
<article class="card-body p-5">
        
        <h4 class="title mb-3">${product.productName}</h4>
	
	<h4 class="title mb-3">Product Id</h4>
	<p>${product.productId}</p>

<p class="price-detail-wrap"> 
	<span class="price h4 text-warning"> 
		<span class="currency">Rs:</span><span class="num">${product.price}/-</span>
	</span> 
	
</p> <!-- price-detail-wrap .// -->
<dl class="item-property">
  <dt>Description</dt>
  <dd><p>${product.productDesc} </p></dd>
</dl>
<dl class="param param-feature">
  <dt>Stock</dt>
  <dd>${product.stock}</dd>
</dl>  <!-- item-property-hor .// -->
<dl class="param param-feature">
  <dt>Category</dt>
  <dd>${product.categoryId}</dd>
</dl>  <!-- item-property-hor .// -->
<dl class="param param-feature">
  <dt>SupplierId</dt>
  <dd>${product.supplierId}</dd>
</dl>
  <!-- item-property-hor .// -->
  <form action="<c:url value="/addToCart/${product.productId}"/>" method="get">
    <tr>
       <td colspan="2">
       <input value="1" name="quantity">
       <input type="submit" value="Add To Cart">
      </td>
    </tr> 
       
</article>
</aside>
</div>
</div>


</form>
</div>
</body>
</html>
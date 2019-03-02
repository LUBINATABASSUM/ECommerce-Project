<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
</head>
<body background="resources/images.bg3.jpg">
<%@include file="Header.jsp"%>
<div class="container">
    <div class="row">
       
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    
                </div>

    <div class="col-xs-6 col-sm-6 col-md-6 text-right">
     <p>
                        <em>Date: <%=new java.util.Date() %> </em>
                    </p>
                    <p>
                        <em>Order ID: ${orderData.orderId}</em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
             
       


   
   <table class="table table-hover">
	
		 <thead>
                        <tr>
		
			<th>SL #</th>
			<th>Product Name</th>
			<th>Quantity</th>
			<th class="text-center">Price</th>
			<th class="text-center">Total Price</th>
			
		</tr>
 </thead>
  <tbody>
		<c:forEach items="${listCartItem}" var="cartItem">
	<form action="<c:url value="/updateCartItem/${cartItem.cartId}"/>" method="get">

				<tr>
				
					<td></td>
					<td>${cartItem.productName}</td>
					<td>${cartItem.quantity}</td>
					<td>${cartItem.price}</td>
					<td>${cartItem.quantity * cartItem.price}/-</td>
					
		</tr>
		</form>

		</c:forEach>


		<tr>
		<td>  </td>
		<td>  </td>
			<td class="text-right"><h4><strong>Grand Total Price</strong></h4></td>
			<td class="text-center text-danger"><h4><strong>${grandTotal}/-</strong></h4></td>
		</tr>
		</tbody>
		
 </table> 
 </div>
 </div>
 
 

 
     
</body>
</html>
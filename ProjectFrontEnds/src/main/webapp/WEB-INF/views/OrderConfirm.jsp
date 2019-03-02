<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/images/bg1.jpg">
	<%@include file="Header.jsp"%>
	<div class="container">
	<table class="table">
	
		<tr>
			<td colspan="5"><center>Your Order</center></td>
			</tr>
		<tr bgcolor="pink">
			<td>SL #</td>
			<td>Product Name</td>
			<td>Quantity</td>
			<td>Price</td>
			<td>Total Price</td>
			
		</tr>

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
     <form action="updateAddress" method="get">
   <td colsapn="2">Address</td>
    <td colspan="4">
      <textarea  name="address" rows="5" cols="30">${addr}</textarea>
      
      </td>
      <td>
      <input type="submit" value="UpdateAddress"/>
      </td>
      </form>
      </tr>
      
       
     

		<tr bgcolor="grey">
			<td colspan="4">Grand Total Price</td>
			<td colspan="2">${grandTotal}/-</td>
		</tr>
		<tr>
		

	<tr bgcolor="grey">
            <td colspan="3"><center><a href="<c:url value="/productDisplay"/>">Edit Cart</a></center></td>
			<td colspan="3"><center><a href="<c:url value="/payment"/>">Payment</a></center></td>
            
        </tr>	


	</table>
	</div>
	<%@include file="Footer.jsp" %>
</body>
</html>
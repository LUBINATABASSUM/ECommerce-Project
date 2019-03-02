<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body background="resources/images/bg3.jpg">
<%@include file="Header.jsp"%>
 <section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">Your Order</h1>
     </div>
</section> 
<div class="container mb-4">
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-striped">

       <thead>
                        <tr>
                          

    
                           <th scope="col">SL #</th>
                           <th scope="col">Product Name</th>
                           <th scope="col">Quantity</th>
                            <th scope="col">Price</th>
                             <th scope="col">Total Price</th>
                              <th scope="col">Operation</th>
          </tr>
       </thead>
      <tbody>
      <c:forEach items="${listCartItem}" var="cartItem">
      <form action="<c:url value="/updateCartItem/${cartItem.cartId}"/>" method="get">
     
     <tr>
      
        <td></td>
        <td>${cartItem.productName}</td>
        <td><input type="text" value="${cartItem.quantity}" name="quantity"/></td>
        <td>${cartItem.price}</td>
        <td>${cartItem.quantity * cartItem.price}/-</td>
        <td>
            <input type="submit" value="Update" class="btn btn-success"/>
            <a class="btn btn-danger" href="<c:url value="/deleteCartItem/${cartItem.cartId}"/>">Delete</a>
        </td>
        </tr>
        </form>
        </c:forEach>
        
        <tr>
           <td><strong>Grand Total Price</strong></td>
           <td class="text-right"><strong>${grandTotal}/-</strong></td>
          </tr>
          </tbody>
          </table>
          </div>
          </div>
      
        <div class="col mb-2">
            <div class="row">
           <div class="col-sm-12  col-md-6"><a href="<c:url value="/productDisplay"/>">Continue Shopping</a></div>
			 <div class="col-sm-12 col-md-6 text-right"><a href="<c:url value="/orderConfirm"/>">Checkout</a></div>
			 
     </div>
   </div>
     </div>
   </div>
  </div>       
        
      
        <%@include file="Footer.jsp" %>    

</body>
</html>
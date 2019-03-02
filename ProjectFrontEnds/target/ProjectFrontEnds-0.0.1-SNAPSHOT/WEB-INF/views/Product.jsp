<%@ page language="java" contentType="text/html"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <html>
  <%@include file="Header.jsp"%>
  
  

<body background="resources/images/bg3.jpg">


<form:form action="InsertProduct"  modelAttribute="product" method="post" enctype="multipart/form-data">
<table align="center">

<tr bgcolor="sky blue">
   <td colspan="2"><center>Product Form</center></td>
   </tr>
   
   <tr>
      <td>Product Name</td>
      <td><form:input   path="productName"/></td>
      </tr>
  <tr>
      <td>Price</td>
      <td><form:input  path="price"/></td>
      </tr>
    <tr>
      <td>Stock</td>
      <td><form:input   path="stock"/></td>
      </tr>
    <tr>
      <td>Category</td>
      <td>
      
           <form:select  path="categoryId">
               <form:option value="0" label="---Select List---"/>
               <form:options  items="${categoryList}"/>
               
         
          </form:select> 
          
            </td>
      </tr>
   <tr>
      <td>Supplier</td>
      <td><form:input   path="supplierId"/></td>
      </tr>
   <tr>
      <td>Product Description</td>
      <td><form:input  path="productDesc"/></td>
      </tr>
      
      <tr>
		<td> Product Image </td>
		<td><form:input id="pimage" type="file"  path="pimage"/></td>
	</tr>
   
   
     <tr>
          <td colspan="2"><input type="submit" value="Insert Product"/></td>
          </tr>
          
      
</table>
</form:form>

  <table align="center" border="1">



     <tr>
    <td>Product Id</td>
    <td>Product Name</td>
    <td>Price</td>
    <td>Stock</td>
    <td>Category</td>
    <td>Supplier</td>
    <td>Operation</td>
    </tr>
    
    
  
        
    
    <c:forEach  items="${productList}" var="product"> 
    <tr>
     
         <td>${product.productId}</td>
         <td>${product.productName}</td>
         <td>${product.price}</td>
         <td>${product.stock}</td>
         <td>${product.categoryId}</td>
          <td>${product.supplierId}</td>
          <td>
            <a href="<c:url value="editProduct/${product.productId}"/>">Edit</a>
            <a href="<c:url value="deleteProduct/${product.productId}"/>">Delete</a>
          </td>
    </tr>
    
   </c:forEach>
</table>

</body>
</html>
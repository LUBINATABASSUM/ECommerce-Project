<%@ page language="java" contentType="text/html"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
  
  
  
   <style>
.carousel-inner img {
	width: 50%; 
	margin: auto;
	min-height: 80px;
	

}
img {
	height: 50%;
}
</style>
<title>SHOPPERSTOP</title>
</head>
<body background="resources/images/bg1.jpg">



<%@include file="Header.jsp"%>
<div class="container">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/131.jpg" alt="Image" style="width:70%;">
      </div>

      <div class="item">
        <img src="resources/images/img2.jpg" alt="Image" style="width:70%;">
      </div>
       <div class="item">
        <img src="resources/images/l2.jpg" alt="Image" style="width:70%;">
      </div>
    <div class="item">
        <img src="resources/images/im2.jpg" alt="Image" style="width:70%;">
      </div>
    
     
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br/><br><br/><br/>
<div class="container-fluid">
  
  <div class="row">
  
    <div class="col-4"><img src="resources\images\im1.jpg" style="width:30%; height:30%;">
	<p><b>Core i3 Laptops</b></p>
	<p><b>Dell,HP,Lenovo & more</b></p>
	</div>
    <div class="col-4"><img src="resources\images\im4.jpg" style="width:30%; height:30%;">
    <p><b>Core i5 Laptops</b></p>
	<p><b>Dell,HP,Lenovo & more</b></p>
    </div>
    <div class="col-4"><img src="resources\images\l2.jpg" style="width:30%; height:30%;">
    <p><b>Core i7 Laptops</b></p>
	<p><b>Dell,HP,Lenovo & more</b></p>
    </div>
  </div>
</div>

<p>Laptops are a must-have-device for everyone as these are easy-to-use, portable, energy savers and more. On ShopperStop, you can find laptops from the top brands like Acer, Apple, Asus, Dell, HP, Lenovo, Gaming Laptops and more. Laptops prices range between Rs 10,000 and Rs 2,00,000. With a plethora of offers and laptop deals, you can easily pick a laptop that falls under a reasonable price range and one that suits your technological requirements as well.  
</p>



<div class="footer">  
      <%@include file="Footer.jsp" %>
      </div>
</body>
</html>
<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@include file="Header.jsp"%>

<form class="form-horizontal" action="<c:url value='/register'/>" method="POST">
  <fieldset>
    <div id="legend">
      <legend class=""><center>Register</center></legend>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="username">Username</label>
      <div class="controls">
        <input type="text" id="username" name="username" placeholder="Username" class="input-xlarge" required>
       
      </div>
    </div>
    
       <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <input type="text" id="email" name="email" placeholder="email" class="input-xlarge" required>
       
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <input type="password" id="password" name="password" placeholder="Password" class="input-xlarge" required>
      
      </div>
    </div>
    
    <div class="control-group">
      <!-- Address -->
      <label class="control-label" for="addr">Address</label>
      <div class="controls">
        <input type="text" id="addr" name="addr" placeholder="Addr" class="input-xlarge">
       
      </div>
    </div>
    
    <div class="control-group">
      <!-- phone Number -->
    <label class="control-label" for="mobileno">Phone Number</label>
      <div class="controls">
       
      <input type="text" id="mobileno" name="mobileno" placeholder="Mobile Nor" class="input-xlarge" required>
      </div>
    </div>
      
 
    <div class="control-group">
      <!-- Button -->
      <div class="controls">
      <input type="submit" name="submit"  value="Register">
      </div>
    </div>
   
  </fieldset>
</form>
<%@include file="Footer.jsp" %>
</body>
</html>






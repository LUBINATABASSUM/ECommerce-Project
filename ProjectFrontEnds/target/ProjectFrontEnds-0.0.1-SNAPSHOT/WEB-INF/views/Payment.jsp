<%@ page language="java" contentType="text/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body background="resources/images/bg3.jpg">
<%@include file="Header.jsp"%>
<table class="table table-bordered" width="50%" align="center">

   <tr bgcolor="pink">
        <td>Total Amount</td>
        <td>${grandTotal}</td>
        
        </tr>
    </table>
    <br/><br/><br/><br/><br/>
    
  <div class="container"> 
 <form action="<c:url value="/receipt"/>" method="post">
  <div class="row">
        <div class="col-xs-12 col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                    Payment Details</h3>
                    
                    <div class="checkbox pull-right">
                        <label>
                            <input type="checkbox" />
                            Remember
                        </label>
                    </div>
                </div>
                <div class="panel-body">
                    <form role="form">
                    <div class="form-group">
       
     <tr>
           <td colspan="2"><center>
            <input type="radio" name="pmode" value="CC" required/>Credit Card
            <input  type="radio" name="pmode"  value="COD">Cash on Delivery</center></td>
            </tr>
            
            <div class="input-group">
                            <input type="text" value="0987-2345-9087-8000"class="form-control" id="cardNumber" placeholder="Valid Card Number"
                                required autofocus />
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                        </div>
                    </div>
         <div class="row">
            <div class="col-xs-5 col-md-5 pull-right">
                            <div class="form-group">
                                <label for="cvCode">
                                    CV CODE</label>
                                <input type="password" value="345 "class="form-control" id="cvCode" placeholder="CV" required />
                           </div>
                           </div>
                           </div>
                           
     
        <input type="submit" value="Pay" class="btn btn-success"/>
        </form>
        </div>
        </div>
        </div>
        </div>
        

</form>
</body>
</html>
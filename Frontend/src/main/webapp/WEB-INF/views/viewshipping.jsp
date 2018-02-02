<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.box{
    width: 300px;
    border: 2px solid blue;
    padding: 2px;
    margin:35px;
    float:left;
}
body {
    background-color: lightgreen;
}
</style>
</head>

<body> <center>List Of Shipping</center>
 <table cellspacing="10">
<tr>
<th>S.No</th>
<th>Shippingid</th>
<th>name</th>
<th>mobileno</th>
<th>address</th>
<th>EDIT</th>
<th> DELETE</th>
</tr>
<c:forEach items="${shippingList}" var="shipping" varStatus="status">
<tr>
<td>${status.count}</td>
<td>${shipping.shippingid}</td>
<td>${shipping.name}</td>
<td>${shipping.mobileno}</td>
<td>${shipping.address}</td>
<td><button type="button" class="btn btn-info"><a href="editShipping?shippingId=${shipping.shippingid}">EDIT</a></button></td>
<td><button type="button" class="btn btn-danger"><a href="deleteShipping?shippingId=${shipping.shippingid}">DELETE</a></button></td>
</tr>
</c:forEach>
</table>
 
 <button type="button" class="btn btn-info"><a href="newshipping">CREATE NEW ADDRESS </a></button>
 
 <c:forEach items="${shippingList}" var="shipping" varStatus="status">
<div class="box">
<h4>
${shipping.name}<br>
${shipping.mobileno}<br>
${shipping.address}<br></h4>
<button type="button" class="btn btn-info"><a href="editShipping?shippingId=${shipping.shippingid}">EDIT</a></button>
<button type="button" class="btn btn-danger"><a href="deleteShipping?shippingId=${shipping.shippingid}">DELETE</a></button>
  <a href="deliveryaddress?shippingId=${shipping.shippingid}"><button>deliveryhere</button></a>
</div>
</c:forEach>
</body>
</html>
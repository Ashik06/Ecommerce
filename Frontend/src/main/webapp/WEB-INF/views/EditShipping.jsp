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
</head>
<body>
<form action="afterEditShipping">

Id:
<br>  <input type="text" name="shippingid"value="${shipping.shippingid}" readonly="true"><br>
    name:
  <br><input type="text" name="name" value="${shipping.name}"><br>
   phoneNo:<br>
 <input type="text" name="mobileno" value="${shipping.mobileno}"><br>
 address:<br>
 <input type="text" name="address" value="${shipping.address}"><br>
   <input type="submit" name="submit">
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
 div {
    background-color: lightgrey;
    width: 300px;
    border: 25px lightgrey;
    padding: 25px;
    margin: 25px;
} 
footer {
    padding: 1em;
    color: black;
    background-color: white;
    clear: left;
    text-align: right;
}


</style>
</head>
<body>
<center>List Of Cart</center>
<table cellspacing="20">
<tr>
<th>S.No</th>
<th>productName</th>
<th>quantity</th>
<th>price</th>
<th>total</th>

<th> DELETE</th>
</tr>
<c:forEach items="${cartList}" var="cart" varStatus="status">

<tr>
<td>${status.count}</td>
<td>${cart.productName}</td>
<td>${cart.quantity}</td>
<td>${cart.price}</td>
<td>${cart.total}</td>

<td><a href="deleteCart?cartId=${cart.cartid}">DELETE</a></td>
</tr>
</c:forEach>
<tr>
<td> Grand Total: </td>
<td> ${total}</td> 
</tr>
<tr>
<td><button type="button" class="btn btn-primary"><a href="proceed">proceddelivery</a></button>
  </td>
  <td>
  <button type="button" class="btn btn-primary"><a href="ContinousShop">ContinousShop</a></button>
  </td>
</tr>
</table>
<footer>Copyright &copy; Moblies World.com</footer>
</body>
</html>
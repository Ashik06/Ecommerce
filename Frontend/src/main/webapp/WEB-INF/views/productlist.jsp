<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="navbar.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<center><h2>List of Products</h2></center><br>
<table class="table table-striped">
<thead>

<tr><th>ProductName</th><th>Price</th><th>Action</th>

</tr>
</thead>
<tbody>
<c:forEach items="${p.productsAttr }" var="p"></c:forEach>
<tr>

<td> Notebook</td>
<td>120</td>
<c:url value="/all/viewProduct/1${p.id }" var="viewUrl"></c:url>
<c:url value="/admin/deleteproduct/${p.id }" var="deleteUrl"></c:url>
 <td><a href="${viewUrl}" ><span class="glyphicon glyphicon-info-sign"></span></a>
 <a href="{deleteUrl}"></a><span class="glyphicon glyphicon-trash"></span></a></td>

</tr>
<tr>

<td>pencil</td>
<td>110</td>
<c:url value="/all/viewProduct/2 ${p.id }" var="viewUrl"></c:url>
<c:url value="" var="deleteUrl"></c:url>
<td> <a href="${viewUrl}" ><span class="glyphicon glyphicon-info-sign"></span></a>
<a href="{deleteUrl}"><span class="glyphicon glyphicon-trash"></span></a></td>

</tr>
<tr>

<td>paper</td>
<td>140</td>
<c:url value="/all/viewProduct/3 ${p.id }" var="viewUrl"></c:url>
<c:url value="" var="deleteUrl"></c:url>
<td> <a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign"></span></a>
<a href="{deleteUrl}"><span class="glyphicon glyphicon-trash"></span></a></td>

</tr>
<tr>

<td>pen</td>
<td>150</td>
<c:url value="/all/viewProduct/4 ${p.id }" var="viewUrl"></c:url>
<c:url value="" var="deleteUrl"></c:url>
<td> <a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign"></span></a>
<a href="{deleteUrl}"><span class="glyphicon glyphicon-trash"></span></a></td>

</tbody>
</table>


</div>
</body>
</html>
<%@ include file="footer.jsp"%>


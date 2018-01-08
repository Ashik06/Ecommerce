 <jsp:include page="header.jsp"></jsp:include>
 <%@ page language="java" contentType="text/html" import="com.niit.model.Product"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<title>Product </title>

<tr>
		<h1> Product Module </h1>
	</tr>
	<tr>
	<td>Product ID</td>
		<td><form:input class="form-control" path="productId"/></td> 
	</tr>
	<tr>
	<td>Product Name</td>
	<td><form:input class="form-control" path="productId"/></td>
	</tr>
	<tr>
	<td>Product Quantity</td>
	<td><form:input class="form-control" path="productId"/></td>
	</tr>
	<tr> 
	<td>Product Description</td>
		<td><form:textarea class="form-control" style="height:150px;"  path="productDes"/></td>
		</tr>
		<tr>
		<td>Product Price</td>
		<td><form:input  class="form-control" path="price"/></td>
	</tr>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
<%@ include file="header.jsp" %>

<title>Login page</title>
<style type="text/css">
body {
    background-color: lightblue;
}
</style>



	<c:url value="/j_spring_security_check" var="action"></c:url>
		<form:form action="${action}" class="log" method="post" >

			<center><h3 style="color:white;">Login</h3> </center>
			<br>
			<label for="Username"><span class="glyphicon glyphicon-user"> USER NAME</span></label>
			<input type="text"  name="j_username"  placeholder="Username">
			<label for="Password"><span class="glyphicon glyphicon-lock"> PASSWORD</span></label>
			<input type="password"  name="j_password"  placeholder="password">
			<br>
			<c:url value="/all/RegistrationForm" var="register"></c:url>
			<u><a href="${register}">New User?</a></u><br>
			<button type="submit" class="btn btn-danger btn-lg" >Login</button>
				 <c:if test="${not empty error}">
				<div class="error"><b>${error}</b></div>
	 			</c:if> 
				<c:if test="${not empty logout}">
			<div class="msg"><b>${logout}</b></div>
				</c:if>	
			<br>
			<br>
	</form:form> 

<%@ include file="footer.jsp" %>
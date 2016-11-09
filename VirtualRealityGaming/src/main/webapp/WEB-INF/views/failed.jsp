<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>   
<%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>
    history.forward();
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN - PORTAL</title>
</head>
<body>
<form:form action="login.htm" method="post" commandName="user">
	Enter Username :<form:input path="userName" name="userName" placeholder="UserName"/>
	Enter Password :<form:password path="password" name="password" placeholder="Password"/>
	<input type="submit" value="Login" /> 

</form:form>
</body>
</html>
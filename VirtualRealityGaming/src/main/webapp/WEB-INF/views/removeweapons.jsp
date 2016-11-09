<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

<style>
	
	h1{
	font-family:"Monotype Corsiva";
	font-size:60px;
	}
</style>

<script>
    history.forward();
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN - PORTAL</title>
</head>
<body>
<div class="jumbotron"><h1 class="text-center">VIRTUAL REALITY GAMING</h1></div>
			<nav class="navbar navbar-inverse">
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-left">	
						<li><a href="GoHome.htm">Home</a></li>
				<c:if test = "${sessionScope.islogged==true}">      
					<c:if test = "${sessionScope.type == 'admin'}">      
    					<li><a href="addweapons.htm">Add Weapons</a></li>
					</c:if> 
				</c:if>
				</ul>
					<ul class="nav navbar-nav navbar-right">
				<c:choose>
    				<c:when test="${sessionScope.islogged==true}">
    					<li><a>Welcome ${sessionScope.loggedinUser }</a></li>
        					<c:if test = "${sessionScope.type == 'user'}">      
    							<li><a href="Profile.htm">Profile</a></li>
							</c:if>
        				<li><a href="logoutpage.htm">Logout</a></li>
    				</c:when>
   					 <c:otherwise>
  					      <li><a href="signup.htm">Sign Up</a></li>
       					 <li><a href="loginpage.htm">Login</a></li>
  					  </c:otherwise>
					</c:choose>
					</ul>
				</div>
			</nav>
		<div class="container-fluid text-center">
			<c:if test="${exist == false}">
				<h3> No Such Weapon Exists! </h3>
			</c:if>
			
			<c:if test="${removed == true}">
				<h3> Weapon Successfully Removed! </h3>
			</c:if>
			
			<form action="removeweapons.htm" method="POST">
				Weapon ID : <input type="number" name="weaponid"/>
				<input type="submit" value="Remove" />
			</form>
		</div>
</body>
</html>
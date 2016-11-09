<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>
    history.forward();
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIRTUAL REALITY GAMING - GENRE</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<style>
	h1{
	font-family:"Monotype Corsiva";
	font-size:60px;
	}
	tr{
		text-align:left;
	}
	table { 
    border-spacing: 10px;
    border-collapse: separate;
	}
	select{
	width: 150px;
	}
</style>

</head>
<body>
<div class="jumbotron"><h1 class="text-center">VIRTUAL REALITY GAMING</h1></div>

		<nav class="navbar navbar-inverse">
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
				<c:choose>
    				<c:when test="${sessionScope.islogged==true}">
    					<li><a>Welcome ${sessionScope.loggedinUser }</a></li>
        				<li><a href="Profile.htm">Profile</a></li>
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
<h3>ENTER PARTICIPANTS INFO</h3>
<form:form action="GearsOfWar.htm" method="post" commandName="parts" >
	<table class="container-fluid text-center">
	<tr class="tablerow">
		<td>Select User :</td>
		<td><form:select name="participantValue" path="participantName" items="${parts}"></form:select></td></tr>
	
	<tr><td>Select Character :</td><td><select name="charSelect">
	<c:forEach var="iter" items="${chars}">
		<option>${iter.characterName} </option>	
	</c:forEach>
	</select></td></tr>
	
	<tr class="tablerow"><td>Select Weapon 1 :</td><td><select name="weapon1Select">
	<c:forEach var="iter" items="${weapons}">
		<option>${iter.weaponName} </option>	
	</c:forEach>
	</select></td></tr>
	
	<tr class="tablerow"><td>Select Weapon 2 :</td><td><select name="weapon2Select">
	<c:forEach var="iter" items="${weapons}">
		<option>${iter.weaponName} </option>	
	</c:forEach>
	</select></td></tr>
	
	<tr class="tablerow"><td>Select Weapon 3 :</td><td><select name="weapon3Select">
	<c:forEach var="iter" items="${weapons}">
		<option>${iter.weaponName} </option>	
	</c:forEach>
	</select></td></tr>
	</table>
	<input class="btn btn-primary btn-lg" type="submit" value="Submit" />
</form:form>
</div>
</body>
</html>
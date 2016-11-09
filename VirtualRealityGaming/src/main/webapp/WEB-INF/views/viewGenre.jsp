<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
	select{
		width:280px;
		height:45px;
		font-size:20px;
	}
	h1{
	font-family:"Monotype Corsiva";
	font-size:60px;
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
<h3>SELECT GENRE</h3>
<form:form action="selectGame.htm" method="post" commandName="genre">
	<form:select name="genrevalue" path="genreName" items="${genreList}">
	</form:select>
	<input class="btn btn-primary btn-lg" type="submit" value="Submit" />
</form:form>
</div>
</body>
</html>
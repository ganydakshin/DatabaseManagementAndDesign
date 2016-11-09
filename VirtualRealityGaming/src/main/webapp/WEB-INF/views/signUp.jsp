<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page session="true" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

<style>

	#success{
		text-align:center;
		color: red;
		font-size:24px;
	}
</style>

<script>
    history.forward();
    
  //AJAX
    var xmlHttp;
    xmlHttp = GetXmlHttpObject();
    function saveUser() {
       if(xmlHttp==null)
       {
           alert("Your browser does not support AJAX");
       return;
    }
    var first=document.getElementById("first").value;
    var last=document.getElementById("last").value;
    var username=document.getElementById("username").value;
    var password=document.getElementById("password").value;
    var query="firstName="+first+"&lastName="+last+"&userName="+username+"&password="+password;    
    xmlHttp.onreadystatechange=function stateChanged()
    {
        if(xmlHttp.readyState==4 && xmlHttp.status==200)
     {
var json=JSON.parse(xmlHttp.responseText);

document.getElementById("failure").innerHTML=json.failmsg;
document.getElementById("success").innerHTML=json.successmsg;   
}};
    
    xmlHttp.open("POST","registeruser.htm",true);
    xmlHttp.setRequestHeader("content-type","application/x-www-form-urlencoded");
    xmlHttp.send(query);
    return false;
    }

    
    
    function GetXmlHttpObject()
    {
        var xmlHttp = null;
        try
        {
            // Firefox, Opera 8.0+, Safari
            xmlHttp = new XMLHttpRequest();
        } catch (e)
        {
            // Internet Explorer
            try
            {
                xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e)
            {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
        }
        return xmlHttp;
    }
    
    
    
    
</script>

	<title>Patient Sign Up</title>
</head>
<body>
<div class="jumbotron"><h2 class="text-center">WELCOME TO DRUGS - ONLINE PORTAL - NEW USER SIGN UP</h2></div>
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
	
	<div id="success"></div>
	<div id="failure"></div>
	
	<form:form commandName="user" onsubmit="return saveUser();" id="myForm" method="POST" enctype="multipart/form-data">	
	First Name : <form:input id="first" path="firstName" name="firstName" placeholder="First Name" /><form:errors path="firstName"/><br /><br />
	Last Name : <form:input id="last" path="lastName" name="lastName" placeholder="Last Name"/><form:errors path="lastName"/><br /><br />
	Preferred UserName : <form:input id="username" path="userName" name="userName" placeholder="Preferred UserName"/><form:errors path="userName"/><br /><br />
	Password : <form:password id="password" path="password" name="password" placeholder="Password"/><form:errors path="password"/><br /><br />
	<input type="submit" value="Submit" />
	</form:form>
</body>
</html>
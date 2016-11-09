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

<script>
    history.forward();
    
    function func1(){
    	
    	document.getElementById("guns").style.display = "block";
    	document.getElementById("flame").style.display = "none";
    	document.getElementById("rocket").style.display = "none";
    	document.getElementById("gunsli").className = "active";
    	document.getElementById("flameli").className = "none";
    	document.getElementById("rocketli").className = "none";
    	
    }
    function func2(){
    	document.getElementById("guns").style.display = "none";
    	document.getElementById("flame").style.display = "block";
    	document.getElementById("rocket").style.display = "none";
    	
    	document.getElementById("gunsli").className = "none";
    	document.getElementById("flameli").className = "active";
    	document.getElementById("rocketli").className = "none";
    	
    }
    function func3(){
    	document.getElementById("guns").style.display = "none";
    	document.getElementById("flame").style.display = "none";
    	document.getElementById("rocket").style.display = "block";
    	document.getElementById("gunsli").className = "none";
    	document.getElementById("flameli").className = "none";
    	document.getElementById("rocketli").className = "active";
    	
    }
    
</script>

<style>
	p{
	color:red;
	}
	#guns,#flame,#rocket{
		margin-top:2%;
		
	}
	#flame{
		display:none;
	}
	#rocket{
		display:none;
	}
	.nav-center {  
  text-align: center;
  margin-left:30%;
  width:40%;
  }
  ul.nav {
    display: inline-block;}
    li {
      display: inline
      
      }
      a {
        float: left
      }
 
</style>

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
    			<li><a href="removeweapons.htm">Remove Weapons</a></li>
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

<div class="conatiner text-center">
<div class="row nav-center">
	<ul class="nav nav-tabs">
		<li role="presentation" id="gunsli" class="active"><a onclick="func1()">Add Guns</a></li>
  		<li role="presentation" id="flameli"><a onclick="func2()">Add FlameThrowers</a></li>
 		<li role="presentation" id="rocketli"><a onclick="func3()">Add Rocket Launchers</a></li>
	</ul>
	</div>
	<div id="guns">
		<c:if test="${alreadyexists==true}">
			<p>Weapon ID already exists!!</p>
		</c:if>
    			<c:if test="${success==true}">
					<p>Weapon Successfully Added!</p>
				</c:if>
		<form:form action="addguns.htm" method="post" commandName="Guns">	
			<div class="	form-group row">
			<div class="col-sm-3"></div>
   				 <label for="inputId" class="col-sm-2 form-control-label">Weapon ID</label>
    			<div class="col-sm-3">
      				<form:input path="weaponId" type="text" class="form-control" id="inputId" placeholder="Weapon ID" />
    			</div>
    		</div>
    		<div class="form-group row">
    		<div class="col-sm-3"></div>
   				 <label for="inputName" class="col-sm-2 form-control-label">Gun Name</label>
    			<div class="col-sm-3">
      				<form:input path="weaponName" type="text" class="form-control" id="inputName" placeholder="Weapon Name" />
    			</div>
    		</div>		
			<div class="form-group row">
			<div class="col-sm-3"></div>
   				 <label for="inputGId" class="col-sm-2 form-control-label">Game ID</label>
    			<div class="col-sm-3">
      				<form:input path="gameId" type="text" class="form-control" id="inputGId" placeholder="Game ID" />
    			</div>
    		</div>
    		<div class="form-group row">
    		<div class="col-sm-3"></div>
   				 <label for="inputdesc" class="col-sm-2 form-control-label">Description</label>
    			<div class="col-sm-3">
      				<form:input path="description" type="textarea" class="form-control" id="inputdesc" placeholder="Description" />
    			</div>
    		</div>
    		<div class="form-group row">
    		<div class="col-sm-3"></div>
   				 <label for="inputmass" class="col-sm-2 form-control-label">Bullet Mass</label>
    			<div class="col-sm-3">
      				<form:input path="mass" type="text" class="form-control" id="inputmass" placeholder="Bullet Mass" />
    			</div>
    		</div>
    		<div class="form-group row">
    		<div class="col-sm-3"></div>
   				 <label for="inputvelocity" class="col-sm-2 form-control-label">Bullet Velocity</label>
    			<div class="col-sm-3">
      				<form:input path="velocity" type="text" class="form-control" id="inputvelocity" placeholder="Bullet velocity" />
    			</div>
    		</div>
    		<div class="form-group row">
    			<div class="col-sm-3"></div>
   				 <label for="inputnoofbullets" class="col-sm-2 form-control-label">No. Of Bullets</label>
    			<div class="col-sm-3">
      				<form:input path="numberOfBullets" type="text" class="form-control" id="inputnoofbullets" placeholder="No. Of Bullets" />
    			</div>
		
    		</div>
    		<div class="form-group row">
    			<div class="col-sm-5"></div>
    			<div class="col-sm-2">
    				<input class="btn btn-lg btn-primary" type="submit" value="Create Gun" />
    			</div>1
    			<div class="col-sm-5"></div>
    		</div>
		</form:form>
	</div>
	
	
	
	
	<div id="flame">
		<c:if test="${alreadyexistsflame==true}">
			<p>Weapon ID already exists!!</p>
		</c:if>
		<form:form action="addflames.htm" method="post" commandName="FlameThrower">	
			<div class="form-group row">
			<div class="col-sm-3"></div>
   				 <label for="inputId" class="col-sm-2 form-control-label">Weapon ID</label>
    			<div class="col-sm-3">
      				<form:input path="weaponId" type="text" class="form-control" id="inputId" placeholder="Weapon ID" />
    			</div>
    		</div>
    		<div class="form-group row">
    		<div class="col-sm-3"></div>
   				 <label for="inputName" class="col-sm-2 form-control-label">Flamethrower Name</label>
    			<div class="col-sm-3">
      				<form:input path="weaponName" type="text" class="form-control" id="inputName" placeholder="Weapon Name" />
    			</div>
    		</div>		
			<div class="form-group row">
			<div class="col-sm-3"></div>
   				 <label for="inputGId" class="col-sm-2 form-control-label">Game ID</label>
    			<div class="col-sm-3">
      				<form:input path="gameId" type="text" class="form-control" id="inputGId" placeholder="Game ID" />
    			</div>
    		</div>
    		<div class="form-group row">
    		<div class="col-sm-3"></div>
   				 <label for="inputdesc" class="col-sm-2 form-control-label">Description</label>
    			<div class="col-sm-3">
      				<form:input path="description" type="textarea" class="form-control" id="inputdesc" placeholder="Description" />
    			</div>
    		</div>
    		<div class="form-group row">
    		
    		
    		<div class="col-sm-3"></div>
   				 <label for="inputfint" class="col-sm-2 form-control-label">Flame Intensity</label>
    			<div class="col-sm-3">
      				<form:input path="intensity" type="text" class="form-control" id="inputfint" placeholder="Flame Intensity" />
    			</div>
    		</div>
    		<div class="form-group row">
    		<div class="col-sm-3"></div>
   				 <label for="inputtemp" class="col-sm-2 form-control-label">Max Temperature</label>
    			<div class="col-sm-3">
      				<form:input path="temperature" type="text" class="form-control" id="inputtemp" placeholder="Max Flame Temperature" />
    			</div>
    		</div>
    		<div class="form-group row">
    			<div class="col-sm-3"></div>
   				 <label for="inputammo" class="col-sm-2 form-control-label">No. Of Ammo</label>
    			<div class="col-sm-3">
      				<form:input path="ammo" type="text" class="form-control" id="ammo" placeholder="No. Of Ammo" />
    			</div>
    		</div>
    		<div class="form-group row">
    			<div class="col-sm-5"></div>
    			<div class="col-sm-2">
    				<input class="btn btn-lg btn-primary" type="submit" value="Create FlameThrower" />
    			</div>
    			<div class="col-sm-5"></div>
    		</div>
		</form:form>
	</div>
	
	<div id="rocket">
	
	<form:form action="addrockets.htm" method="post" commandName="RocketLauncher">	
			<div class="form-group row">
			<c:if test="${alreadyexistsrockets==true}">
			<p>Weapon ID already exists!!</p>
		</c:if>
			<div class="col-sm-3"></div>
   				 <label for="inputId" class="col-sm-2 form-control-label">Weapon ID</label>
    			<div class="col-sm-3">
      				<form:input path="weaponId" type="text" class="form-control" id="inputId" placeholder="Weapon ID" />
    			</div>
    		</div>
    		<div class="form-group row">
    		<div class="col-sm-3"></div>
   				 <label for="inputName" class="col-sm-2 form-control-label">Rocket Launcher Name</label>
    			<div class="col-sm-3">
      				<form:input path="weaponName" type="text" class="form-control" id="inputName" placeholder="Weapon Name" />
    			</div>
    		</div>		
			<div class="form-group row">
			<div class="col-sm-3"></div>
   				 <label for="inputGId" class="col-sm-2 form-control-label">Game ID</label>
    			<div class="col-sm-3">
      				<form:input path="gameId" type="text" class="form-control" id="inputGId" placeholder="Game ID" />
    			</div>
    		</div>
    		<div class="form-group row">
    		<div class="col-sm-3"></div>
   				 <label for="inputdesc" class="col-sm-2 form-control-label">Description</label>
    			<div class="col-sm-3">
      				<form:input path="description" type="textarea" class="form-control" id="inputdesc" placeholder="Description" />
    			</div>
    		</div>
    		<div class="form-group row">
    		
    		
    		<div class="col-sm-3"></div>
   				 <label for="inputvel" class="col-sm-2 form-control-label">Rocket Velocity</label>
    			<div class="col-sm-3">
      				<form:input path="vel" type="text" class="form-control" id="inputvel" placeholder="Rocket Velocity" />
    			</div>
    		</div>
    		
    		<div class="form-group row">
    			<div class="col-sm-3"></div>
   				 <label for="numberOfRockets" class="col-sm-2 form-control-label">No. Of Rockets</label>
    			<div class="col-sm-3">
      				<form:input path="numberOfRockets" type="text" class="form-control" id="numberOfRockets" placeholder="No. Of Rockets" />
    			</div>
    		</div>
    		<div class="form-group row">
    			<div class="col-sm-5"></div>
    			<div class="col-sm-2">
    				<input class="btn btn-lg btn-primary" type="submit" value="Create Rocket Launcher" />
    			</div>
    			<div class="col-sm-5"></div>
    		</div>
		</form:form>
	
	
	</div>
	</div>
</body>

</html>
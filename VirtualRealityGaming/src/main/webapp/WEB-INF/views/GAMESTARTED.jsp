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
	#Dead{
	height:200px;
	width:100px;
	}
	#Dead1{
	height:200px;
	width:100px;
	}
	.btn-sm{
	margin-top:5%;
	}
	.thebigman{
	border:2px solid black;
	}
	h2{
		color:red;
	}
	img{
	height:100px;
	width:100px;
	}
	h1{
	font-family:"Monotype Corsiva";
	font-size:60px;
	}
	.bold{
		font-weight:bold;
	}
	.theman{
		border:1px solid black;
		border-top:0px;
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

	<div class="row">
	<div class="col-md-4 thebigman"><h2>RADIANT</h2></div>
	<div class="col-md-4 thebigman"><h2>VS</h2></div>
	<div class="col-md-4 thebigman"><h2>SCOURGE</h2></div>
	</div>


	<div class="row">
		<div class="col-md-4">
			<c:forEach var="iter" items="${good}">
				<div class="row theman">
					<div class="col-md-4">
						<c:forEach var="iter2" items="${parts}">
							<c:if test="${iter2.participantId==iter.partId}">
								<h6 class="bold">NAME :</h6> <h6>${iter2.participantName}</h6>
								<h6 class="bold">PARTICIPANT ID : </h6><h6>${iter2.participantId}</h6>
							</c:if>
						</c:forEach>
						<c:forEach var="iter2" items="${chars}">
							<c:if test="${iter2.characterId==iter.characterId}">
								<h6 class="bold">CHARACTER :</h6> <h6>${iter2.characterName}</h6>
							</c:if>
						</c:forEach>
					</div>
					<div class="col-md-4">
							<c:forEach var="iter2" items="${parts}">
								<c:if test="${iter2.participantId==iter.partId}">
									<c:if test="${iter.hitPoints gt 0}">
										<c:if test="${iter.headVibLevel==0}">
											<img src="<c:url value="/resources/images/Head0.png"/> "/>	
										</c:if>
										<c:if test="${iter.headVibLevel==1}">
											<img src="<c:url value="/resources/images/Head1.png"/>"/>	
										
										</c:if>
										<c:if test="${iter.headVibLevel==2}">
											<img src="<c:url value="/resources/images/Head2.png"/>"/>	
									
										</c:if>
										<c:if test="${iter.headVibLevel==3}">
											<img src="<c:url value="/resources/images/Head3.png"/>"/>	
									
										</c:if>
										<c:if test="${iter.headVibLevel==4}">
											<img src="<c:url value="/resources/images/Head4.png"/>"/>	
									
										</c:if>
										<c:if test="${iter.headVibLevel==5}">
											<img src="<c:url value="/resources/images/Head5.png"/>"/>	
									
										</c:if>
										<c:if test="${iter.headVibLevel==6}">
											<img src="<c:url value="/resources/images/Head6.png"/>"/>	
									
										</c:if>
										<c:if test="${iter.headVibLevel gt 6}">
											<img src="<c:url value="/resources/images/Head7.png"/>"/>	
									
										</c:if>
									
										<c:if test="${iter.bodyVibLevel==0}">
											<img src="<c:url value="/resources/images/Body0.png"/>"/>	
										</c:if>
										<c:if test="${iter.bodyVibLevel==1}">
											<img src="<c:url value="/resources/images/Body1.png"/>"/>
										</c:if>
										<c:if test="${iter.bodyVibLevel==2}">
											<img src="<c:url value="/resources/images/Body2.png"/>"/>
										</c:if>
										<c:if test="${iter.bodyVibLevel==3}">
											<img src="<c:url value="/resources/images/Body3.png"/>"/>
										</c:if>
										<c:if test="${iter.bodyVibLevel==4}">
											<img src="<c:url value="/resources/images/Body4.png"/>"/>
										</c:if>
										<c:if test="${iter.bodyVibLevel==5}">
											<img src="<c:url value="/resources/images/Body5.png"/>"/>
										</c:if>
										<c:if test="${iter.bodyVibLevel==6}">
											<img src="<c:url value="/resources/images/Body6.png"/>"/>
										</c:if>
										<c:if test="${iter.bodyVibLevel gt 6}">
											<img src="<c:url value="/resources/images/Body7.png"/>"/>
										</c:if>
									</c:if>
									<c:if test="${iter.hitPoints le 0}">
														<img src="<c:url value="/resources/images/Dead.jpg"/>" id="Dead"/> 
														
														
														
					</c:if>
								</c:if>	
							</c:forEach>
						</div>
					<div class="col-md-4">
								<h6 class="bold">HIT POINTS :</h6><h6> ${iter.hitPoints}</h6>
								
								<c:forEach var="xxx" items="${WPN}">
									</c:forEach>
							<form:form action="SHOOTED.htm" method="post" commandName="pingame">
								<select name="shotweapon">	
									<c:forEach var="xxx" items="${WPN}">
										<c:forEach var="yyy" items="${wee}">
											<c:if test="${iter.id==xxx.actualId}">
												<c:if test="${yyy.weaponId==xxx.weaponId}">
													<option> ${yyy.weaponName}</option>
												</c:if>
											</c:if>
										</c:forEach>
									</c:forEach>
								</select>
							<input type="hidden" name ="parti" value="${iter.partId}">	
							<input class="btn btn-primary btn-sm" type="submit" value="SHOOT" />
						</form:form>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="col-md-4">
			<div class="row">
				
				<h3>PLAYER POSITIONS</h3>
				<br/>
				<h4>X1 : ${X1coord} &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspY : ${Ycoord}</h4>
				<h4>X2 : ${X2coord}	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspY : ${Ycoord}</h4>
				<h4>X3 : ${X3coord}	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspY : ${Ycoord}</h4>
				<h4>X4 : ${X4coord} &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspY : ${Ycoord}</h4>
				<br/>
				<h3>POSITION OF SHOT</h3>
				<br/>
				<h4>A : ${Acoord}</h4>		<h4>B : ${Bcoord}</h4>	
				<br/>
				
			</div>
		
		
		
		
		
		
		
		
		</div>
		<div class="col-md-4">
			<c:forEach var="iter" items="${bad}">
				<div class="row theman">
					<div class="col-md-4">
						<c:forEach var="iter2" items="${parts}">
							<c:if test="${iter2.participantId==iter.partId}">
								<h6 class="bold">NAME :</h6> <h6>${iter2.participantName}</h6>
								<h6 class="bold">PARTICIPANT ID : </h6><h6>${iter2.participantId}</h6>
							</c:if>
						</c:forEach>
						<c:forEach var="iter2" items="${chars}">
							<c:if test="${iter2.characterId==iter.characterId}">
								<h6 class="bold">CHARACTER :</h6> <h6>${iter2.characterName}</h6>
							</c:if>
						</c:forEach>
					</div>
					<div class="col-md-4">
							<c:forEach var="iter2" items="${parts}">
							<c:if test="${iter2.participantId==iter.partId}">
							<c:if test="${iter.hitPoints gt 0}">
								<c:if test="${iter.headVibLevel==0}">		
									<img src="<c:url value="/resources/images/Head0.png"/> "/>	
								</c:if>
								<c:if test="${iter.headVibLevel==1}">		
  									<img src="<c:url value="/resources/images/Head1.png"/> "/>	
								</c:if>
								<c:if test="${iter.headVibLevel==2}">		
									<img src="<c:url value="/resources/images/Head2.png"/> "/>	
								</c:if>
								<c:if test="${iter.headVibLevel==3}">		
									<img src="<c:url value="/resources/images/Head3.png"/> "/>	
								</c:if>
								<c:if test="${iter.headVibLevel==4}">		
									<img src="<c:url value="/resources/images/Head4.png"/> "/>	
								</c:if>
								<c:if test="${iter.headVibLevel==5}">		
									<img src="<c:url value="/resources/images/Head5.png"/> "/>	
								</c:if>
								<c:if test="${iter.headVibLevel==6}">		
									<img src="<c:url value="/resources/images/Head6.png"/> "/>	
								</c:if>
								<c:if test="${iter.headVibLevel==7}">		
									<img src="<c:url value="/resources/images/Head7.png"/> "/>	
								</c:if>
												
								<c:if test="${iter.bodyVibLevel==0}">		
									<img src="<c:url value="/resources/images/Body0.png"/>"/>
										</c:if>
								<c:if test="${iter.bodyVibLevel==1}">		
									<img src="<c:url value="/resources/images/Body1.png"/>"/>
										</c:if>
								<c:if test="${iter.bodyVibLevel==2}">		
									<img src="<c:url value="/resources/images/Body2.png"/>"/>
										</c:if>
								<c:if test="${iter.bodyVibLevel==3}">		
									<img src="<c:url value="/resources/images/Body3.png"/>"/>
										</c:if>
								<c:if test="${iter.bodyVibLevel==4}">		
									<img src="<c:url value="/resources/images/Body4.png"/>"/>
										</c:if>
								<c:if test="${iter.bodyVibLevel==5}">		
									<img src="<c:url value="/resources/images/Body5.png"/>"/>
										</c:if>
								<c:if test="${iter.bodyVibLevel==6}">		
									<img src="<c:url value="/resources/images/Body6.png"/>"/>
										</c:if>
								<c:if test="${iter.bodyVibLevel==7}">		
									<img src="<c:url value="/resources/images/Body7.png"/>"/>
										</c:if>
							</c:if>
							<c:if test="${iter.hitPoints le 0}">
										<img src="<c:url value="/resources/images/Dead.jpg"/>" id="Dead1"/> 
														
							</c:if>
						</c:if>
						</c:forEach>
					</div>
					<div class="col-md-4">
								<h6 class="bold">HIT POINTS :</h6><h6> ${iter.hitPoints}</h6>
								<form:form action="SHOOTED.htm" method="post" commandName="pingame">
								<select name="shotweapon">	
									<c:forEach var="xxx" items="${WPN}">
										<c:forEach var="yyy" items="${wee}">
											<c:if test="${iter.id==xxx.actualId}">							
												<c:if test="${yyy.weaponId==xxx.weaponId}">
													<option> ${yyy.weaponName}</option>
												</c:if>
											</c:if>
										</c:forEach>
									</c:forEach>
								</select>
								<input type="hidden" name ="parti" value="${iter.partId}">	
								<input class="btn btn-primary btn-sm" type="submit" value="SHOOT" />
								</form:form>
						</div>
					</div>
			</c:forEach>
		</div>
	</div>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@400;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous">
    </script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous">
    </script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous">
    </script>
<title>Login</title>
</head>

<style>
    img {
        width: 80%;
        align-self: center;
    }
</style>

<body style="background-color: #c4c4c4; font-family: mulish,monospace;">

	<div class="main-container-login" style="display: flex; justify-content: center; align-items: center">
		<div class="row" style="text-align: center; margin-left: 20px ">
			<div class="col-md-6">
				<h1 style="font-size: 2rem; margin-bottom: 50px; color: #3c64b1;">Patient Management System</h1>
				<hr style="margin: 20px 100px;">
                <h4 style="color: #86898f">Log In</h4>
                
                <form name='loginForm' action="login" method='POST' style=" margin-top: 30px; align-self: center">
                    <input name="username" type="text" placeholder="Enter username" style="width: 300px; height: 40px; border-width: 2px; border-radius: 10px; padding: 10px; margin: 5px 20px; border-color: #3c64b1; background-color: #fafbfd">
                    <input name="password" type="password" placeholder="Enter password" style="width: 300px; height: 40px; border-width: 2px; border-radius: 10px; padding: 10px; margin: 10px 20px; border-color: #3c64b1; background-color: #fafbfd"><br>
                    <button class="btn btn-primary" style="border: none; margin-top: 20px; background-color: #3c64b1;">Login</button>
                </form>
                <%
 					String error = (String) request.getAttribute("error");
 					if (error != null &&error.equals("true"))
 					{
 						out.println("<h4 class='alert alert-danger alert-dismissible fade show' style='font-size: 1rem; margin-top:30px;'>Invalid login credentials. Please try again!! </h4>");
 					}
 				%>
			</div>
			<div class="col-md-6">
				<img src="${pageContext.request.contextPath}/resources/images/patient.png" alt="" >
			</div>
		</div>
	</div>

</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Health Insurance System</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>

h1 {
	font-style: oblique;
	font-variant: small-caps;
	color: Red
}

h3 {
	color: red
}

h2 {
	color: black
}

</style>
</head>
<body>
	<center>
		<marquee>
			<h1>
				Health Care Policy Benifit System
				<h1>
		</marquee>
		</marquee>
	</center>
	<br>
	<br>
	<center>
		<img
			src="https://i2.wp.com/financebuddha.com/blog/wp-content/uploads/2018/07/20182624/Health-Insurance1.jpg?w=1280&ssl=1"
			width="500" height="200" alt="Health Insurance">
	</center>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<center>
		<%
 String error = (String) request.getAttribute("error");
 if (error != null &&error.equals("true"))
 {
 out.println("<h4 style=\"color:red\">Invalid login credentials. Please try again!!</h4>");
 }
 %>
	</center>
	<div class="container">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-primary">
				<div class="panel-heading">Login</div>
				<div class="panel-body">
					<form name='loginForm' action="login" method='POST'>
						<input type="text" class="form-control" name="username"
							placeholder="Username" /> <br /> <input type="password"
							class="form-control" name="password" placeholder="Password" /> <br />
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html> --%>
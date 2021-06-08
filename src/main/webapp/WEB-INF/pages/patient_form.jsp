<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>Home</title>
</head>

<body style="background-color: #c4c4c4">
    <div class="main-container">
        <nav class="nav-bar">
			<div class="nav-div">
				<h1 class="nav-text">PATIENT MANAGEMENT SYSTEM</h1>
				<h1 class="nav-link-box">
					<a href="home" class="nav-link" style="color: #3c64b1; display: inline;">Home</a>
					<a href="<c:url value="/logout" />" class="nav-link" style="color: #3c64b1; display: inline;" > Logout</a></h2>  
				</h1>
			</div>
		</nav>
        
        <form:form action="savePatient" method="post"
				modelAttribute="patient" class="p-3">
				<form:hidden path="patient_id"/>
			<!-- 2 column grid layout with text inputs for the first and last names -->
			<div class="row mb-3">
				<div class="col">
					<div class="form-outline">
						<label class="form-label" for="patientName">Patient name</label>
						<form:input type="text" path="patient_name" placeholder="Abraham Lincoln" id="patientName" class="form-control" required="required" /> 
					</div>
				</div>
				<div class="col">
					<div class="form-outline">
						<label class="form-label" for="age">Age</label>
						<form:input path="age" type="text" id="age" class="form-control" placeholder="Age" title="Should be a number" pattern="^[0-9]{1,3}$" required="required" /> 
					</div>
				</div>
			</div>

			<!-- Text input -->
			<div class="row mb-3">
				<div class="col">
					<div class="form-outline">
						<label class="form-label" for="dob">Date of Birth</label>
						<form:input path="dateofbirth" type="text" id="dob" pattern="(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/[0-9]{4}" title="dd/MM/yyyy" placeholder="08/12/1998" class="form-control" required="required" /> 
					</div>
				</div>
				<div class="col">
					<div class="form-outline">
						<label class="form-label" for="emailId">Email Id</label>
						<form:input path="emai_id" type="email" placeholder="lincoln@abraham.com" id="emailId" class="form-control" required="required" /> 
					</div>
				</div>
			</div>

			<!-- Text input -->
			<div class="row mb-3">
				<div class="col">
					<div class="form-outline">
						<label class="form-label" for="altNum">Alternate Number</label>
						<form:input path="alternate_phonenumber" placeholder="1234567890" type="text" id="altNum" class="form-control" required="required" /> 
					</div>
				</div>
				<div class="col">
					<div class="form-outline">
						<label class="form-label" for="phoneNum">Phone Number</label>
						<form:input path="phonenumber" type="text" placeholder="9876543210" id="phoneNum" class="form-control" required="required" /> 
					</div>
				</div>
			</div>

			<!-- Email input -->
			<div class="form-outline mb-4">
				<label class="form-label" for="gender">Gender</label>
				<form:input path="gender" type="text" placeholder="Male/Female" id="gender" class="form-control" pattern="([mM]ale|[fF]emale|[oO]ther)" title="male, female, or other" required="required" /> 
			</div>

			<!-- Number input -->
			<div class="form-outline mb-4">
				<label class="form-label" for="emergencyCont">Emergency Contact</label>
				<form:input path="emergency_contact" type="text" placeholder="9012837465" id="emergencyCont" class="form-control" required="required"/> 
			</div>

			<!-- Message input -->
			<div class="form-outline mb-4">
				<label class="form-label" for="address">Address</label>
				<form:textarea path="address" class="form-control" placeholder="23rd Street road, Mantoaco" id="address" rows="2" required="required"/>
			</div>
			<button type="submit" class="btn btn-primary btn-block mb-4 w-100" style="background-color: #3c64b1;">Add Patient</button>
		</form:form>
        
	</div>
</body>
</html>
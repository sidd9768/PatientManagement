<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">
<title>Add new patient</title>
</head>
<body>

<div class="formControl">
	<h1>Add Patient</h1>
	<form:form action="savePatient" method="post" modelAttribute="patient">
	<form:hidden path="patient_id"/>
	
		<div class="mb-3">
  			<label for="patientName" class="form-label">Patient Name</label>
        	<form:input path="patient_name" class="form-control" id="patientName"/>
		</div>
		
		<div class="mb-3">
  			<label for="phoneNumber" class="form-label">Patient Number</label>
        	<form:input path="phonenumber" class="form-control" id="phoneNumber"/>
		</div>
		
		<div class="mb-3">
  			<label for="alternateNum" class="form-label">Alternate Number</label>
        	<form:input path="alternate_phonenumber" class="form-control" id="alternateNum"/>
		</div>
		
		<div class="mb-3">
  			<label for="emailId" class="form-label">Patient Email Id</label>
        	<form:input path="emai_id" class="form-control" id="emailId"/>
		</div>
		
		<div class="mb-3">
  			<label for="address" class="form-label">Patient Address</label>
        	<form:textarea path="address" class="form-control" id="address" rows="5"/>
		</div>	
		
		<div class="mb-3">
  			<label for="dateofbirth" class="form-label">Patient DOB</label>
        	<form:input path="dateofbirth" class="form-control" id="dateofbirth"/>
		</div>
		<div class="mb-3">
  			<label for="age" class="form-label">Patient Age</label>
        	<form:input path="age" class="form-control" id="age"/>
		</div>
		
		<div class="mb-3">
  			<label for="gender" class="form-label">Patient Gender</label>
        	<form:input path="gender" class="form-control" id="gender"/>
		</div>
		
		<div class="mb-3">
  			<label for="emergency_contact" class="form-label">Emergency Number</label>
        	<form:input path="emergency_contact" class="form-control" id="emergency_contact"/>
		</div>
		<input type="submit" class="btn btn-primary" id="btn-color" value="Add Patient">
        <form:hidden path="patient_id"/>
	
	</form:form>
</div>
</body>
</html>
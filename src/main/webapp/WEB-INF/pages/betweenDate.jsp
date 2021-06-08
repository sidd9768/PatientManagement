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
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<title>Between Date</title>
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

		<div style="padding: 50px;">
			<table class="table table-striped table-hover caption-top" style="font-family: mulish, monospace;">
				<caption>Patients found</caption>
				<thead style="background-color: #1767ad; color: white;">
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Gender</th>
					<th scope="col">Age</th>
					<th scope="col">Date of Birth</th>
					<th scope="col">Contact Number</th>
					<th scope="col">Alternate Number</th>
					<th scope="col">Emergency Number</th>
					<th scope="col">Email id</th>
					<th scope="col">Address</th>	
					<th scope="col">Date Of Registration</th>	
					<th scope="col">Update</th>				
				</thead>
				<tbody>
					<c:forEach var="patient" items="${betweenDatesPatients}">
						<tr>
							<td scope="row">${patient.patient_id}</td>
							<td>${patient.patient_name}</td>
							<td>${patient.gender}</td>
							<td>${patient.age}</td>
							<td>${patient.dateofbirth.getDate()}-${patient.dateofbirth.getMonth()+1}- ${patient.dateofbirth.getYear() + 1900}</td>
							<td>${patient.phonenumber}</td>
							<td>${patient.alternate_phonenumber}</td>
							<td>${patient.emergency_contact}</td>
							<td>${patient.emai_id}</td>
							<td>${patient.address}</td>
							<td>${patient.dateofregistration.getDate()}-${patient.dateofregistration.getMonth()+1}-${patient.dateofregistration.getYear() + 1900}</td>
							<td><a href="editPatient?id=${patient.patient_id}" class="btn btn-success" style="background-color: #1767ad; color: white;">Edit</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>
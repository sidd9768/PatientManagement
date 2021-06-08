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


		<div class="search-div">
			<form action="patientSearch" class="form-search" id="formGet">
				<input type="text" name="query" class="text-search"
					placeholder="Enter patient name (or leave blank to get all)">
				<button class="btn-search">Search Patient</button>
			</form>
		</div>

		<div class="categories">
			<div class="row">
				<div class="col-4 cat-items">
					<img
						src="${pageContext.request.contextPath}/resources/images/verify.png"
						alt="" class="cat-image">
					<p class="cat-text">Register New Patient</p>
					<a
						style="font-family: mulish, monospace; background-color: #1767ad"
						href="newPatient" class="btn btn-primary btn-sm cat-btn">Register</a>
				</div>
				<div class="col-4 cat-items">
					<img
						src="${pageContext.request.contextPath}/resources/images/analytics.png"
						alt="" class="cat-image">
					<p class="cat-text">Search Patient Between Dates</p>
					<button
						style="font-family: mulish, monospace; background-color: #1767ad;"
						class="btn btn-primary btn-sm cat-btn" type="button"
						data-toggle="collapse" data-target="#collapseExample"
						aria-expanded="false" aria-controls="collapseExample">
						Between Dates</button>
					<div class="collapse" id="collapseExample">
						<form action="betweenDatesPatient" id="betweenDateForm"
							style="display: flex; justify-content: center; flex-direction: column; align-items: center; margin-top: 10px">
							<input type="text" placeholder="yyyy-MM-dd"
								pattern="[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])"
								title="yyyy-MM-dd" name="start-date" class=" form-control"
								required
								style="width: 200px; height: 30px; margin-bottom: 10px; text-align: center">
							<input type="text" placeholder="yyyy-MM-dd"
								pattern="[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])"
								title="yyyy-MM-dd" name="end-date" class=" form-control"
								required
								style="width: 200px; height: 30px; margin-bottom: 10px; text-align: center">
							<button
								style="font-family: mulish, monospace; background-color: #1767ad;"
								class="btn btn-primary btn-sm cat-btn">Search</button>
						</form>
					</div>
				</div>
				<div class="col-4 cat-items">
					<img
						src="${pageContext.request.contextPath}/resources/images/filter.png"
						alt="" class="cat-image">
					<p class="cat-text">Sort Patient By Date</p>
					<button style="font-family: mulish, monospace; background-color: #1767ad;"
                        class="btn btn-primary btn-sm cat-btn" type="button" data-toggle="collapse"
                        data-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                        Sort by Date
                    </button>
					<div class="collapse" id="collapse1">
						<form action="filterPatient" style="margin-top: 10px;">
							<input type="radio" id="ascending" name="order" checked="checked"
								value="Ascending"> <label for="ascending">Ascending</label><br>
							<input type="radio" id="descending" name="order"
								value="Descending"> <label for="descending">Descending</label><br>
							<button
								style="font-family: mulish, monospace; background-color: #1767ad; margin-top: 10px"
								class="btn btn-primary btn-sm cat-btn">Sort</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</body>
</html>
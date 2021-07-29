<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Student Vaccination Drive</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
    <style>
        body,
        html {
            height: 100%;
            width: 100%;
            overflow: hidden;
        }
        #h1edit{
        	text-align:center;
            font-size:350%;
            font-family: "Gill Sans", sans-serif;
            font-weight: bold;
        }
        
        #h5edit{
        	text-align:center;
        	font-size:150%;
            font-family:"Gill Sans", sans-serif;
        }
  
        .box-wrapper {
        	margin:1%;
            height: 30%;
            width: 100%;
            display: flex;
            flex-direction: row;
        }
  
        #box1 {
        	margin-right:3%;
            padding: 3%;
            width: 22%;
            line-height: 30px;
            background-color: #FAA0A0;
        }
        #box2 {
        	margin-right:3%;
            padding: 3%;
            width: 22%;
            line-height: 30px;
            background-color: #A7C7E7;
        }
        #box3 {
        	margin-right:3%;
            padding: 3%;
            width: 22%;
            line-height: 30px;
            background-color: #E4E7EC;
        }
        #box4 {
        	margin-right:3%;
            padding: 3%;
            width: 22%;
            line-height: 30px;
            background-color: #B3D9B4;
        }
    </style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md bg-info navbar-dark text-white">
			<div>
				<a class="navbar-brand" href="#">
      				<img src="https://vaccine.icmr.org.in/images/partners/cowinlogo.png" alt="" height="40" class="d-inline-block align-text-top">
      				Student Vaccination Drive
    			</a>
			</div>
		</nav>
	</header>
	<br>

	<div class="box-wrapper">  
            <div id="box1" class="col row-md-2">
                <h1 id="h1edit"><c:out value="${stats.active}" /> </h1>
                <h5 id="h5edit">Active</h5>
            </div>
            <div id="box2" class="col row-md-2">
                <h1 id="h1edit"><c:out value="${stats.confirmed}" /></h1>
                <h5 id="h5edit">Confirmed</h5>
            </div>
            <div id="box3" class="col row-md-2">
                <h1 id="h1edit"><c:out value="${stats.deaths}" /></h1>
                <h5 id="h5edit">Deaths</h5>
            </div>
            <div id="box4" class="col row-md-2">
                <h1 id="h1edit"><c:out value="${stats.recovered}" /></h1>
                <h5 id="h5edit">Recovered</h5>
            </div>
    </div>
    
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New User</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>USN</th>
						<th>Phone Number</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.usn}" /></td>
							<td><c:out value="${user.phno}" /></td>
							<td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>

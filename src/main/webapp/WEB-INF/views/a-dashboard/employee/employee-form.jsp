<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Employee registration</title>

<link rel="icon" href="../resources/img/clogo.jpg" type="image/x-icon">

<!-- Bootstrap core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 

<!-- Custom styles for this template -->
<link href="../resources/css/offcanvas.css" rel="stylesheet">

</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
  <a class="navbar-brand" href="#">
    <img src="../resources/img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
    SC
  </a>
  <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="../a-dashboard">Dashboard</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../attendence/">Attendence</a>
      </li>
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Employee</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="../employee/registration">Add new employee</a>
          <a class="dropdown-item" href="../employee/all">Employees</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Payments</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="../payments/salary">Pay salary</a>
          <a class="dropdown-item" href="../payments/extra">Pay extra</a>
          <a class="dropdown-item" href="../payments/all">History</a>
        </div>
      </li>
    </ul>
  </div>
</nav>

<div class="card bg-light">
  <article class="card-body mx-auto" style="max-width: 400px;">
    <h3 class="card-title mt-3 text-center">Add new employee</h3>
    <p class="text-center">Fill currect employee details.</p>

    <%-- <form name="employee" action="register" method="post"> --%>
	<form:form action="register" modelAttribute="employee">
      <h4>Basic details</h4>
      <div class="form-group input-group">
        <div class="input-group-prepend">
          <span class="input-group-text"> <i class="fa fa-user"></i> </span>
        </div>
        <input name="employeeName" id="name" class="form-control" placeholder="Full name" type="text">
      </div> <!-- form-group// -->
      <div class="error" id="nameError" hidden="true"><small>Please enter valid name.</small></div>

      <div class="form-group input-group">
        <div class="input-group-prepend">
          <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
        </div>
        <input name="email" id="email" class="form-control" placeholder="Email address" type="email" required="required">
      </div> <!-- form-group// -->
      <div class="error" id="emailError" hidden="true"><small>Please enter valid email.</small></div>
      
      <div class="form-group input-group">
        <div class="input-group-prepend">
          <span class="input-group-text"> <i class="fa fa-phone"></i> <span class="ml-2">+91</span></span>
        </div>
        <input name="employeeContact" id="contact" class="form-control" placeholder="Phone number" type="text">
      </div> <!-- form-group// -->
      <div class="error" id="contactError" hidden="true"><small>Please enter valid contact number.</small></div>
      
      <div class="form-group input-group">
        <div class="input-group-prepend">
          <span class="input-group-text"> <i class="fas fa-venus-double"></i> </span>
        </div>
        <select class="form-control" name="gender" id="gender">
          <option selected>Select gender</option>
          <option>Male</option>
          <option>Female</option>
        </select>
      </div> <!-- form-group end.// -->
      <div class="error" id="genderError" hidden="true"><small>Please choose your gender.</small></div>
      
      <div class="form-group input-group">
        <div class="input-group-prepend">
          <span class="input-group-text"> <i class="fas fa-city"></i> </span>
        </div>
        <input name="employeeCity" id="city" class="form-control" placeholder="Enter city" type="text">
      </div> <!-- form-group// -->
      <div class="error" id="cityError" hidden="true"><small>Please enter valid city.</small></div>

      <div class="form-group input-group">
        <div class="input-group-prepend">
          <span class="input-group-text"> <i class="fas fa-home"></i> </span>
        </div>
        <input name="employeeZipcode" id="zipcode" class="form-control" placeholder="Zip code" type="text">
      </div> <!-- form-group// -->     
      <div class="error" id="zipcodeError" hidden="true"><small>Please enter valid zipcode.</small></div>     

      <h4>Job details</h4>
      <div class="form-group input-group">
        <div class="input-group-prepend">
          <span class="input-group-text"> <i class="fa fa-building"></i> </span>
        </div>
        <select class="form-control" name="employeeDesg" id="desg">
          <option selected>Select job type</option>
          <option>Labour</option>
          <option>Worker</option>
        </select>
      </div> <!-- form-group end.// -->
      <div class="error" id="desgError" hidden="true"><small>Please choose your desg.</small></div>
      
      <div class="form-group input-group">
        <div class="input-group-prepend">
          <span class="input-group-text"> <i class="fas fa-rupee-sign"></i> </span>
        </div>
        <input name="employeeSalary" id="salary" class="form-control" placeholder="Salary per day" type="number">
      </div> <!-- form-group// -->
      <div class="error" id="salaryError" hidden="true"><small>Salary should be greater than zero.</small></div>
      
      <!-- <input type="text" name="company.companyId" value="aaa" id="companyId" hidden="true"> -->
      <form:input path="company.companyId" hidden="true"/>
                                     
      <div class="form-group">
        <button type="submit" id="submit-btn" class="btn btn-primary btn-block"> Register employee  </button>
      </div> <!-- form-group// -->  
      </form:form>    
    <%-- </form> --%>
  </article>
</div> <!-- card.// --> 

<!-- Bootstrap modal -->
<div class="modal fade" id="myAlert" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Message.</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="alert-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
      </div>
    </div>
  </div>
</div>
<!-- End bootstrap modal -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script type="text/javascript">
 $(document).ready(function() {
	 $("form").submit(function(e) {
		 e.preventDefault();
		 
		 if(validateForm()) {
		 
			 var btn = $("#submit-btn");
			 btn.attr("disabled", true);
			 btn.html('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Please wait');
			 
			 var data = $(this).serialize();
			 
			 $.post("register", data,
			 function(data, status){
			 	$("#alert-body").text("Employee Registration successfully completed.")
			 	$("#myAlert").modal();
			 })
			 .fail(function() {
			    $("#alert-body").text("Employee registration failed.")
			    $("#myAlert").modal();
			  })
			 .always(function() {
				 btn.text("Register employee");
				 btn.attr("disabled", false);
				 $("form").trigger("reset"); 
			  });
		 }
	 })
	 
	 function validateForm() {
	    var name = $('#name').val();
	    var email = $('#email').val();
	    var contact = $('#contact').val();
	    var gender = $('#gender').val();
	    var city = $('#city').val();
	    var zipcode = $('#zipcode').val();
	    var desg = $('#desg').val();
	    var salary = $('#salary').val();
	    
	    console.log("salary : " + salary);

	    if (name.length < 1) {
	    	$('#nameError').attr("hidden", false);
	    	return false
	    }
	    else {
	    	$('#nameError').attr("hidden", true);
	    }
	    
//	    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	    var regEx = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
	    var validEmail = regEx.test(email);
	    if (!validEmail) {
	    	$('#emailError').attr("hidden", false);
	    	return false
	    }
	    else {
	    	$('#emailError').attr("hidden", true);
	    }
	    
	    if (contact.length != 10) {
	    	$('#contactError').attr("hidden", false);
	    	return false
	    }
	    else {
	    	$('#contactError').attr("hidden", true);
	    }
	    
	    if ($('#gender').find(":selected").text() == "Select gender") {
	    	$('#genderError').attr("hidden", false);
	    	return false
	    }
	    else {
	    	$('#genderError').attr("hidden", true);
	    }
	    
	    if (city.length < 1) {
	    	$('#cityError').attr("hidden", false);
	    	return false
	    }
	    else {
	    	$('#cityError').attr("hidden", true);
	    }
	    
	    if (zipcode.length != 6) {
	    	$('#zipcodeError').attr("hidden", false);
	    	return false
	    }
	    else {
	    	$('#zipcodeError').attr("hidden", true);
	    }
	    
	    if ($('#desg').find(":selected").text() == "Select job type") {
	    	$('#desgError').attr("hidden", false);
	    	return false
	    }
	    else {
	    	$('#desgError').attr("hidden", true);
	    }
	    
	    if (salary.length < 1) {
	    	$('#salaryError').attr("hidden", false);
	    	return false
	    }
	    else {
	    	$('#salaryError').attr("hidden", true);
	    }
	    
	    return true;
	 }
 })
 </script>
 
<script src="https://kit.fontawesome.com/aee8a89e17.js" crossorigin="anonymous"></script>
<script src="../resources/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
<script src="../resources/js/offcanvas.js"></script>

</body>
</html>
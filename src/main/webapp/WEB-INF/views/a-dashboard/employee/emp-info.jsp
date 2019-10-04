<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Attendence</title>

<link rel="icon" href="../resources/img/clogo.jpg" type="image/x-icon">

<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

<!-- Bootstrap core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 

<!-- Custom styles for this template -->
<link href="../resources/css/offcanvas.css" rel="stylesheet">

<style>
  /*
*
* ==========================================
* CUSTOM UTIL CLASSES
* ==========================================
*
*/
.profile-header {
    transform: translateY(5rem);
}


/*
*
* ==========================================
* FOR DEMO PURPOSE
* ==========================================
*
*/
body {
    background: #654ea3;
    background: -webkit-linear-gradient(to right, #654ea3, #eaafc8);
    background: linear-gradient(to right, #654ea3, #eaafc8);
    min-height: 100vh;
}
</style>
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
      <li class="nav-item active">
        <a class="nav-link" href="../a-dashboard">Dashboard</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../attendence/">Attendence</a>
      </li>
      <li class="nav-item dropdown">
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

<div class="mt-4" style="display: flex; justify-content: center;">
  <div class="bg-light" style="display: inline-block;">
    <div class="p-3">
      <div class="media">
        <img src="../resources/img/profile.jpg" style="width: 100px;" class="mr-3" alt="...">
        <div class="media-body" style="align-self: flex-end;">
          <span class="h5 mt-0">Jayesh Tajane</span> <small><a href="#"><i class="fas fa-edit"></i></a></small><br>
          <small>
            <a href="../employee/attendence">View all attendence</a><br>
            <a href="../employee/payments">View all payments</a>
          </small>
        </div>
      </div>
      <small><a href="#"><span><i class="fas fa-user-edit"></i> Edit profile</span></a></small>

      <table class="table table-sm table-borderless mt-3">
        <tbody>
          <tr>
            <td><i class="fas fa-map-marker-alt"></i></td>
            <td>Akole <small class="ml-2"><a href="#"><i class="fas fa-edit"></i> edit</a></small></td>
          </tr>
          <tr>
            <td><i class="fas fa-phone"></i></td>
            <td>9172959534 <small class="ml-2"><a href="#"><i class="fas fa-edit"></i> edit</a></small></td>
          </tr>
          <tr>
            <td><i class="fas fa-envelope"></i></td>
            <td>jay@gmail.com <small class="ml-2"><a href="#"><i class="fas fa-edit"></i> edit</a></small></td>
          </tr>
          <tr>
            <td><i class="fas fa-key"></i></i></td>
            <td>
              ******* <span class="ml-2" style="cursor: pointer;">
                        <i class="fas fa-eye"></i>
                        <i class="fas fa-eye-slash" hidden></i> 
                      </span>
            </td>
          </tr>
          <tr>
            <td><i class="fas fa-male"></i></td>
            <td>Male <small class="ml-2"><a href="#"><i class="fas fa-edit"></i> edit</a></small></td> <!-- <i class="fas fa-female"></i> For female -->
          </tr>
          <tr>
            <td><i class="fas fa-briefcase"></i></td>
            <td>Worker <small class="ml-2"><a href="#"><i class="fas fa-edit"></i> edit</a></small></td>
          </tr>
        </tbody>
      </table>

      <table class="table table-sm table-borderless mt-3">
        <tbody>
          <tr>
            <td>Salary per day</td>
            <td>&#x20b9;600 <small class="ml-2"><a href="#"><i class="fas fa-edit"></i> edit</a></small></td>
          </tr>
          <tr>
            <td>Balance</td>
            <td>&#x20b9;1550 <small class="ml-2"><a href="#"><i class="fas fa-edit"></i> edit</a></small></td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="bg-danger pl-3 pr-3 pb-3">
      <span class="h4 text-warning">Danger Zone</span>
<br>
      <button type="button" class="btn btn-secondary mt-2"><i class="fas fa-user-slash"></i> Remove employee</button>
    </div>
  </div>
</div>

<script src="../resources/js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
<script src="../resources/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
<script src="../resources/js/offcanvas.js"></script>
<script src="https://kit.fontawesome.com/aee8a89e17.js" crossorigin="anonymous"></script>

</body>
</html>
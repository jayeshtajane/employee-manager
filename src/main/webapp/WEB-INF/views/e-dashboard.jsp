<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Dashboard</title>

<link rel="icon" href="./resources/img/clogo.jpg" type="image/x-icon">

<!-- Bootstrap core CSS -->
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
<style>
  .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }
  .media img {
    height: 91px;
    width: 91px;
  }

  .row {
    justify-content: space-between;
  }

  @media (min-width: 768px) {
    .bd-placeholder-img-lg { 
      font-size: 3.5rem;
    }
  }

</style>
<!-- Custom styles for this template -->
<link href="./resources/css/offcanvas.css" rel="stylesheet">

</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
  <a class="navbar-brand" href="#">
    <img src="./resources/img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
    SC
  </a>
  <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="./e-dashboard">Dashboard</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./e-dashboard/attendence">Attendence</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./e-dashboard/my-info">My info</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./e-dashboard/payments">Payments</a>
      </li>
    </ul>
    <div class="d-flex">
      <div class="dropdown">
        <span class="text-white" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="10,20"><i class="far fa-bell fa-lg"></i></span>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </div>

      <div class="dropdown ml-3">
        <span class="text-white" id="notifyDropdrown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="10,20"><i class="fas fa-user-circle fa-lg"></i></span>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="notifyDropdrown">
          <a class="dropdown-item" href="#">Action 1</a>
          <a class="dropdown-item" href="#">Another action 1</a>
          <a class="dropdown-item" href="#">Something else here 1</a>
        </div>
      </div>
    </div>
  </div>
</nav>

<main role="main" class="">
  <div class="my-3 p-3 bg-white rounded shadow-sm">
    <div class="pb-2 mb-0">
      <h6 class="">Dashboard</h6>
    </div>
    <div class="row ml-2 mr-2">
      <div class="card text-white bg-dark mt-2" style="width: 15rem;">
        <div class="card-header">Attendence</div>
        <div class="card-body text-center">
          <h3 class="card-text">Today : <span class="text-success"><i class="fas fa-check"></i></span></h3>
          <a href="./e-dashboard/attendence" class="card-link">View all</a>
        </div>
      </div>

      <div class="card text-dark bg-warning mt-2" style="width: 15rem;">
        <div class="card-header">Total balance</div>
        <div class="card-body text-center">
          <h3 class="card-text">&#x20b9;5,000</h3>
          <a class="card-link text-warning">.</a>
        </div>
      </div>

      <div class="card text-white bg-primary mt-2" style="width: 15rem;">
        <div class="card-header">Salary per day</div>
        <div class="card-body text-center">
          <h3 class="card-text">&#x20b9;500</h3>
          <a class="card-link text-primary">.</a>
        </div>
      </div>

      <div class="card text-white bg-info mt-2" style="width: 15rem;">
        <div class="card-header">Last payment</div>
        <div class="card-body text-center">
          <h3 class="card-text">Salary : &#x20b9;3,500</h3>
          <a href="./e-dashboard/payments" class="card-link text-dark">View all</a>
        </div>
      </div>
    </div>
    <hr>
    <div class="pb-2 mb-0">
      <h6 class="">Recent activity</h6>
    </div>

    <div class="media pt-3 pl-3">
      <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#007bff"></rect><text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>
      <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
        <strong class="d-block text-gray-dark">Your profile updated.</strong>
        <!-- Jayesh Kisan Tajane -->
        <!-- <br> -->
        <span class="badge badge-warning">15/08/2019</span>
        <span class="badge badge-info">11.30 PM</span>
      </p>
    </div>
    <div class="media pt-3 pl-3">
      <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#e83e8c"></rect><text x="50%" y="50%" fill="#e83e8c" dy=".3em">32x32</text></svg>
      <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
        <strong class="d-block text-gray-dark">Salary recieved &#x20b9;2050.</strong>
        <!-- Jayesh Kisan Tajane -->
        <!-- <br> -->
        <span class="badge badge-warning">15/08/2019</span>
        <span class="badge badge-info">11.30 PM</span>
      </p>
    </div>
    <div class="media pt-3 pl-3">
      <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#6f42c1"></rect><text x="50%" y="50%" fill="#6f42c1" dy=".3em">32x32</text></svg>
      <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
        <strong class="d-block text-gray-dark">Extra &#x20b9;500 recieved</strong>
        <!-- Jayesh Kisan Tajane -->
        <!-- <br> -->
        <span class="badge badge-warning">15/08/2019</span>
        <span class="badge badge-info">11.30 PM</span>
      </p>
    </div>

    <div class="d-block text-right mt-3">
      <a href="./e-dashboard/notifications">View all</a>
    </div>
    
  </div>
</main>

<script src="./resources/js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="./resources/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
<script src="./resources/js/offcanvas.js"></script>
<script src="https://kit.fontawesome.com/aee8a89e17.js" crossorigin="anonymous"></script>

</body>
</html>
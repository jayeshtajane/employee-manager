<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>History</title>

<link rel="icon" href="../resources/img/clogo.jpg" type="image/x-icon">

<!-- Bootstrap core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
<style>
  .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }

  @media (min-width: 768px) {
    .bd-placeholder-img-lg {
      font-size: 3.5rem;
    }
  }
</style>
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
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Employee</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="../employee/registration">Add new employee</a>
          <a class="dropdown-item" href="../employee/all">Employees</a>
        </div>
      </li>
      <li class="nav-item dropdown active">
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

<main role="main" class="container">
  
  <div class="my-3 p-3 bg-white rounded shadow-sm">
    <div class="row">
      <div class="col-sm-6">
        <span class="h3">Payements</span>
      </div>
      <div class="col-sm-6">
        <button class="btn btn-primary float-right" data-toggle="modal" data-target="#exampleModal">Add filter</button>
      </div>
    </div>
    
    <div class="media pt-3 pl-3">
      <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#6f42c1"></rect><text x="50%" y="50%" fill="#6f42c1" dy=".3em">32x32</text></svg>
      <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
        <strong class="d-block text-gray-dark">Salary paid &#x20b9; 500</strong>
        Jayesh Kisan Tajane
        <br>
        <span class="badge badge-warning">15/08/2019</span>
        <span class="badge badge-info">11.30 PM</span>
      </p>
    </div>
    <div class="media pt-3 pl-3">
      <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#6f42c1"></rect><text x="50%" y="50%" fill="#6f42c1" dy=".3em">32x32</text></svg>
      <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
        <strong class="d-block text-gray-dark">Salary paid &#x20b9; 500</strong>
        Jayesh Kisan Tajane
        <br>
        <span class="badge badge-warning">15/08/2019</span>
        <span class="badge badge-info">11.30 PM</span>
      </p>
    </div>
    <div class="media pt-3 pl-3">
      <svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 32x32"><title>Placeholder</title><rect width="100%" height="100%" fill="#6f42c1"></rect><text x="50%" y="50%" fill="#6f42c1" dy=".3em">32x32</text></svg>
      <p class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
        <strong class="d-block text-gray-dark">Salary paid &#x20b9; 500</strong>
        Jayesh Kisan Tajane
        <br>
        <span class="badge badge-warning">15/08/2019</span>
        <span class="badge badge-info">11.30 PM</span>
      </p>
    </div>

    <nav aria-label="..." class="mt-3">
      <ul class="pagination justify-content-end">
        <li class="page-item disabled">
          <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
        </li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item active" aria-current="page">
          <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
        </li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item">
          <a class="page-link" href="#">Next</a>
        </li>
      </ul>
    </nav>
  </div>
</main>


<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content bg-dark text-light">
      <div class="m-3">
        <form>
          <div class="form-group">
            <label for="exampleSelect1">Select Filter</label>
            <select id="exampleSelect1" class="custom-select" required>
              <option value="">Choose filter</option>
              <option value="1">Filert by date</option>
              <option value="2">Filert by name or email</option>
            </select>
          </div>
          <div class="form-group">
            <label for="exampleInput1">Enter date to search</label>
            <input class="form-control" id="exampleInput1" type="text" placeholder="Default input" required>
          </div>
          <input type="submit" class="btn btn-primary" value="Filter data">
        </form>
      </div>
    </div>
  </div>
</div>


<script src="../resources/js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="../resources/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
<script src="../resources/js/offcanvas.js"></script>

</body>
</html>
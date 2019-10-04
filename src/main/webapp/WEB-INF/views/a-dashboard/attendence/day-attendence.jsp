<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Attendence</title>

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

<main role="main" class="container">
  
  <div class="my-3 p-3 bg-white rounded shadow-sm">
    <div class="row">
      <div class="col-sm-6">
        <div class="h3">Attendence</div>
        <div>Date : 12-02-2019 <small><a href="./all" class="ml-2">Change date</a></small></div>
      </div>
      <div class="col-sm-6">
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Search by email or name" aria-label="Recipient's username" aria-describedby="button-addon2">
          <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="button" id="button-addon2">Search</button>
          </div>
        </div>
      </div>
    </div>

    <div class="table-responsive">
      <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">#</th>
            <th scope="col">Email</th>
            <th scope="col">Name</th>
            <th scope="col">Is present</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Mark@gmail.com</td>
            <td>Otto</td>
            <td><span class="text-success h4"><i class="fas fa-check"></i></span></td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob@gmail.com</td>
            <td>Thornton</td>
            <td><span class="text-success h4"><i class="fas fa-check"></i></span></td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Larry@gmail.com</td>
            <td>the Bird</td>
            <td><span class="text-danger h4"><i class="fas fa-times"></i></span></td>
          </tr>
          <tr>
            <th scope="row">1</th>
            <td>Mark@gmail.com</td>
            <td>Otto</td>
            <td><span class="text-success h4"><i class="fas fa-check"></i></span></td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob@gmail.com</td>
            <td>Thornton</td>
            <td><span class="text-success h4"><i class="fas fa-check"></i></span></td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Larry@gmail.com</td>
            <td>the Bird</td>
            <td><span class="text-danger h4"><i class="fas fa-times"></i></span></td>
          </tr>
          <tr>
            <th scope="row">1</th>
            <td>Mark@gmail.com</td>
            <td>Otto</td>
            <td><span class="text-success h4"><i class="fas fa-check"></i></span></td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob@gmail.com</td>
            <td>Thornton</td>
            <td><span class="text-success h4"><i class="fas fa-check"></i></span></td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Larry@gmail.com</td>
            <td>the Bird</td>
            <td><span class="text-danger h4"><i class="fas fa-times"></i></span></td>
          </tr>
        </tbody>
      </table>
    </div>

    <nav aria-label="...">
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

<script src="../resources/js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="../resources/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/aee8a89e17.js" crossorigin="anonymous"></script>
<script src="../resources/js/offcanvas.js"></script>

</body>
</html>
          
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Pay extra</title>

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
    <h6 class="border-bottom border-gray pb-2 mb-0">Paid extra money to employee</h6>
    <!-- Extra Paid Form -->
    <div class="text-dark card font-weight-bold p-3">
      <form method="POST" class="mt-2">
        <div class="emp-form">
          <div class="form-group">
            <label for="inputId">Employee Email ID</label>
            <input type="email" class="form-control border border-dark" id="inputId" name="id" placeholder="Enter ID" onchange="getEmployeeName()">
          </div> 
          <div class="form-group">
            <label for="inputName">Name</label> 
            <input type="text" class="form-control border border-dark" id="inputName" name="name" placeholder="Enter Name" disabled>
          </div>
          <div class="form-group">
            <label for="inputAmount">Rupees to Give</label>
            <input type="number" class="form-control border border-dark" id="inputAmount" name="amt" placeholder="Enter Amount">
          </div>

          <div class="form-group">
            <label for="inputOption">Transaction type</label>
            <select class="form-control" id="inputOption">
              <option>Deduct from salary</option>
              <option>Bonus</option>
            </select>
          </div>

          <div class="form-group">
            <label for="inputReason">For what?</label>
            <input type="text" class="form-control border border-dark" id="inputReason" name="amt" placeholder="Reason to give money.">
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-primary" id="extra-pay-btn">Pay</button>
            <input type="reset" class="btn btn-secondary" value="Clear">
          </div>
        </div>
      </form>
    </div>
  </div>
</main>

<!-- Bootstrap modal -->
<div class="modal fade" id="myAlert" tabindex="-1" role="dialog" aria-labelledby="modalTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalTitle"></h5>
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

<script src="../resources/js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="../resources/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
<script src="../resources/js/offcanvas.js"></script>

</body>
</html>
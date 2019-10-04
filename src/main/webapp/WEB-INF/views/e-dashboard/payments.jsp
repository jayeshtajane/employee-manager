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

<script>
  document.addEventListener("DOMContentLoaded", function(){
    $('#datepicker').datepicker({
        format: 'dd-mm-yyyy',
        uiLibrary: 'bootstrap'
    });
  });
</script>
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
        <a class="nav-link" href="../e-dashboard">Dashboard</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./attendence">Attendence</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./my-info">My info</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="./payments">Payments</a>
      </li>
    </ul>
  </div>
</nav>

<main role="main" class="container">
  
  <div class="my-3 p-3 bg-white rounded shadow-sm">
    <div class="row">
      <div class="col-sm-6">
        <span class="h3">Payments</span>
      </div>
      <div class="col-sm-6">
        <div class="input-group mb-3">
          <input id="datepicker" class="form-control" placeholder="Search" aria-label="Recipient's username" aria-describedby="button-addon2" width="270" />
          <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="button" id="button-addon2">Search</button>
          </div>
        </div>
      </div>
    </div>

    <div class="table-responsive table-striped">
      <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">#</th>
            <th scope="col">Date</th>
            <th scope="col">Type</th>
            <th scope="col">Amount</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>10-02-2019</td>
            <td>Salary</td>
            <td>&#x20b9;3500</td>
          </tr>
          <tr>
            <th scope="row">1</th>
            <td>16-02-2019</td>
            <td>Extra</td>
            <td>&#x20b9;1200</td>
          </tr>
          <tr>
            <th scope="row">1</th>
            <td>30-02-2019</td>
            <td>Salary</td>
            <td>&#x20b9;3500</td>
          </tr>
          <tr>
            <th scope="row">1</th>
            <td>04-03-2019</td>
            <td>Salary</td>
            <td>&#x20b9;3500</td>
          </tr>
          <tr>
            <th scope="row">1</th>
            <td>19-03-2019</td>
            <td>Bonus</td>
            <td>&#x20b9;1000</td>
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
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
<script src="../resources/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
<script src="../resources/js/offcanvas.js"></script>
<script src="https://kit.fontawesome.com/aee8a89e17.js" crossorigin="anonymous"></script>

</body>
</html>
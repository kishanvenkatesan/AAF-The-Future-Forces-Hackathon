<?php
session_start();
if(!isset($_SESSION['email'])){ header('location:login.php');}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Banking</title>
  <?php require 'assets/autoloader.php'; ?>
  <?php require 'assets/db.php'; ?>
  <?php require 'assets/function.php'; ?>
</head>
<body style="background:#96D678;background-size: 100%">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
 <a class="navbar-brand" href="index.php">
    <img src="images/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
   <!--  <i class="d-inline-block  fa fa-building fa-fw"></i> --><?php echo constant('bankName'); ?>
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
  </div>
</nav><br><br><br>
<div class="container">
<div class="card w-100 text-center shadowBlue">
  <div class="card-header">
    Your Account
  </div>
  <div class="card-body">
   <table class="table table-bordered table-sm">
  <thead>
    <tr>
      <th scope="col">Holder Name</th>
      <th scope="col">Account No.</th>
      <th scope="col">Current Balance</th>
      <th scope="col">Expenses</th>
      <th scope="col">Invoices</th>
      <th scope="col">Reciepts</th>
      <th scope="col">Deposits</th>
      <th scope="col">Equity Investments</th>
      <th scope="col">Tax returns</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <?php
      $array = $con->query("select * from pdet where email = '$_SESSION[email]'");
      while($row=mysqli_fetch_array($array))
    {
    
        echo"<tr>";
        echo"<td>".$row['Name']."</td>";
        echo"<td>".$row['Number']."</td>";
        echo"<td>".$row['Balance']."</td>";
        echo"<td>".$row['Expense']."</td>";
        echo"<td>".$row['Cash Flow']."</td>";
        echo"<td>".$row['Investments']."</td>";
        echo"<td>".$row['Expense'] ."</td>";
        echo"<td>".$row['Equity Investment']."</td>";
        echo"<td>".$row['Tax returns']."</td>";
        echo"</tr>";
    }
// PHP program to multiply two 
// square matrices.
  
// This function multiplies mat1[][] and 
// mat2[][], and stores the result in res[][]
error_reporting(E_ALL ^ E_WARNING); 
$res = pow(((0.63*$row['balance'])+(-0.62*$row['Tax returns'])+ ($row['Investments'] *0.85)
+ ($row['Expense']*-0.9)+(0.7*$row['Equity Investment'])),2.718);
  //echo($res);
 //$res = mt_rand()/mt_getrandmax();
    if ($res >= 0)
    {
        echo("loan granted");
    }
    else if (($res<0)){
        echo("Loan not granted, contact us for furthur details");
    }
    echo(" ");
// Driver Code


  
     ?>
  </tbody>
</table>
  <div class="card-footer text-muted">
    <?php echo constant('bankName'); ?>
  </div>
</div>

</body>
</html>
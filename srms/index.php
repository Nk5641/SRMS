<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['login']))
{
$uname=$_POST['username'];
$password=md5($_POST['password']);
$sql ="SELECT UserName,Password FROM admin WHERE UserName=:uname and Password=:password";
$query= $dbh -> prepare($sql);
$query-> bindParam(':uname', $uname, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
$_SESSION['alogin']=$_POST['username'];
echo "<script type='text/javascript'> document.location = 'dashboard.php'; </script>";
} else{
    
    echo "<script>alert('Invalid Details');</script>";

}

}

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin Login</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="css/prism/prism.css" media="screen" > <!-- USED FOR DEMO HELP - YOU CAN REMOVE IT -->
        <link rel="stylesheet" href="css/main.css" media="screen" >
        <script src="js/modernizr/modernizr.min.js"></script>
        <link rel="stylesheet" href="style.css">
    </head>
    <body class="backgroundimage">
    <div class="container" id="container">
      <div class="form-container sign-in-container">
        <form action="dashboard.php">
          <h1>Admin</h1>
          <input
            type="text"
            name="username"
            class="form-control"
            id="inputEmail3"
            placeholder="UserName" required
          />
          <input
            type="password"
            name="password"
            class="form-control"
            id="inputPassword3"
            placeholder="Password" required
          />
          <button type="submit" name="login">Sign in</button>
        </form>
      </div>
      <div class="overlay-container">
        <div class="overlay">
          <div class="overlay-panel overlay-right">
            <h1>For Student</h1>
            <p>Check Result</p>
            <button
              onClick="location.href='find-result.php'"
              class="ghost"
              id="signUp"
            >
              Click Here
            </button>
          </div>
        </div>
      </div>
    </div>
    </body>
</html>


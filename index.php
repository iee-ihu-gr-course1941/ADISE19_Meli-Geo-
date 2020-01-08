<?php
  session_start();
  if(!isset($_REQUEST['p'])){
    $_REQUEST['p'] = '';
  }
if($_REQUEST['p']=='do_login'){
$_REQUEST['p'] = '';
require "login/do_login.php";
} 
 if ( !isset( $_SESSION['user'] ) ) {
      
      // Redirect them to the login page
      header("Location: login/login.php");
   }
    echo $_SESSION['user'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="main.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="js/uno.js"></script>
  <title>Uno Game</title>
</head>
   <body class="game">
   <div class="container">
    <div class="row justify-content-md-center">
   <div class="md-auto opponent">
    <h1>Waiting for opponent...</h1>
   </div>
   <div class="md-auto">
     <div id="table" style="border:none"></div>
   </div> 
   <div class="you">
      <h1 class="player1"><?php echo($_SESSION['nickname']) ?></h1>
    </div>
    <div class="controls"><?php
    if($_SESSION['user']=="player1"){
     echo "<button onclick='fill_table()' class='btn btn-primary'>Create Table</button>";
    }?>
    </div>
   </div>
   </div>   
  
   <script
			  src="https://code.jquery.com/jquery-3.4.1.js"
			  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
			  crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>

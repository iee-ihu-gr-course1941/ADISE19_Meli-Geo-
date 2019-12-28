
<?php
require_once "lib/dbconnect2.php";
		//get value pass from form in login.php file
		$username = $_POST['username'];

		//to prevent mysql injection
		$username = stripcslashes($username);

		//connection to database
		$stmt = $mysqli->prepare('INSERT INTO `players` (`username`) VALUES (?)');
		$stmt->bind_param('s', $username);
		$stmt->execute();
		$_SESSION['user'] = $username;
?>


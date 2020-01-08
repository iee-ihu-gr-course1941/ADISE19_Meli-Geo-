
<?php
require "lib/dbconnect2.php";
		//get value pass from form in login.php file
		$nickname = $_GET['nickname'];

		//to prevent mysql injection
		$nickname = stripcslashes($nickname);
		
		$stmt1 = $mysqli->prepare('SELECT * from `players`');
		$stmt1->execute();
		$result = $stmt1->get_result();
		if(mysqli_num_rows($result)==0){
		//connection to database
		$_SESSION['user'] = "player1";
		$_SESSION['nickname'] = $nickname;
		$stmt = $mysqli->prepare("INSERT INTO `players` (`player`,`nickname`,`hasTurn`) VALUES ('{$_SESSION['user']}','{$_SESSION['nickname']}',default)");
		$stmt->execute();
		 header("Location: index.php");
		} else{
		$_SESSION['user'] = "player2";
		$_SESSION['nickname'] = $nickname;
		$stmt = $mysqli->prepare("INSERT INTO `players` (`player`,`nickname`,`hasTurn`) VALUES ('{$_SESSION['user']}','{$_SESSION['nickname']}',default)");
		$stmt->execute();
		 header("Location: index.php");
		}
?>


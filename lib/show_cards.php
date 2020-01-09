<?php 
session_start();
require_once "dbconnect2.php";
header('Content-type: application/json');
$stmt2 = $mysqli->prepare("SELECT card_name,color from `cards` WHERE `owner`='{$_SESSION['user']}'" );
$stmt2->execute();
$result = $stmt2->get_result();
$json = print json_encode($result->fetch_all(MYSQLI_ASSOC),JSON_PRETTY_PRINT);
?>
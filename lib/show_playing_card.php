<?php 
require "dbconnect2.php";

$stmt = $mysqli->prepare('SELECT card_name,color FROM `cards` WHERE owner="PlayingCard"');
$stmt->execute();
$result = $stmt->get_result();
$row = mysqli_fetch_array($result);
echo $row['card_name'];

?>
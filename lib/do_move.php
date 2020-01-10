<?php
session_start();
require_once "dbconnect2.php";

function do_move($card){
 global $mysqli;
 $user = $_SESSION['user'];
 
$stmt0 = $mysqli->prepare("UPDATE `cards` SET `owner`='burnt' WHERE `owner`='PlayingCard'");
$stmt0->execute();

$stmt = $mysqli->prepare("UPDATE `cards` SET `owner`='PlayingCard' WHERE `card_name`='$card' AND `owner`='$user'");
$stmt->execute();
}
?>
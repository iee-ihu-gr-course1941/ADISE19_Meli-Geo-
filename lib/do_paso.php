<?php 
function do_paso(){
global $mysqli;
$oppnickname = $_SESSION['oppnickname'];
$state = $mysqli->prepare("UPDATE `game` SET `has_turn`='{$oppnickname}'");
$state->execute();
$_SESSION["drawn"]="false";
}
?>
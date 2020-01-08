<?php
session_start();
require 'dbconnect2.php';
function showPlayers(){
global $mysqli;
if($_SESSION['user']=="player1"){
    $stmt1 = $mysqli->prepare("SELECT nickname FROM `players` where player='player2' ");
    $stmt1->execute();
    $result = $stmt1->get_result();
    $row = mysqli_fetch_array($result);
    $_SESSION['oppnickname'] = $row['nickname'];
}else{
    $stmt2 = $mysqli->prepare("SELECT nickname FROM `players` where player='player1' ");
    $stmt2->execute();
    $result = $stmt2->get_result();
    $row = mysqli_fetch_array($result);
    $_SESSION['oppnickname'] = $row['nickname'];
}}
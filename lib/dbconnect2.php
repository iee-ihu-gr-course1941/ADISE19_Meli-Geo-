<?php

function connect(){
$host='localhost';
$db = 'cards';
require_once "db_upass.php";

$user=$DB_USER;
$pass=$DB_PASS;


if(gethostname()=='users.iee.ihu.gr') {
  $mysqli = new mysqli($host, $user, $pass, $db,null,'/home/student/it/2015/it154582/mysql/run/mysql.sock');
  print "Succesful!";
  
} else {
        $mysqli = new mysqli($host, $user, $pass, $db); 
        $stmt = $mysqli->prepare('SELECT * FROM `cards`');
        $stmt->execute();
        $result = $stmt->get_result();
        $r = $result->fetch_all(MYSQLI_ASSOC);
        print json_encode($r); 
}

if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . 
    $mysqli->connect_errno . ") " . $mysqli->connect_error;
}}?>

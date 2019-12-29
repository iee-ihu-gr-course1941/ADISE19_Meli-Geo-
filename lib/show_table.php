<?php
require_once 'dbconnect2.php';
header('Content-type: application/json');
$stmt = $mysqli->prepare('SELECT * FROM `cards`');
$stmt->execute();
$result = $stmt->get_result();
print json_encode($result->fetch_all(MYSQLI_ASSOC),JSON_PRETTY_PRINT);
?>
<?php 
require_once 'dbconnect2.php';
header('Content-type: application/json');
$stmt = $mysqli->prepare('UPDATE `cards` SET `owner`="Player1" WHERE `owner` IS NULL ORDER BY RAND() LIMIT 7');
$stmt->execute();

$stmt1 = $mysqli->prepare('UPDATE `cards` SET `owner`="Player2" WHERE `owner` IS NULL ORDER BY RAND() LIMIT 7');
$stmt1->execute();

$stmt2 = $mysqli->prepare('SELECT card_name,color,index_card from `cards` WHERE `owner`="Player1"');
$stmt2->execute();
$result = $stmt2->get_result();
$json = print json_encode($result->fetch_all(MYSQLI_ASSOC),JSON_PRETTY_PRINT);
?>

<?php
require_once 'dbconnect2.php';
header('Content-type: application/json');
function reset_board(){
global $mysqli;
$stmt0 = $mysqli->prepare('UPDATE `cards` SET `owner`=null');
$stmt0->execute();

$stmt = $mysqli->prepare('UPDATE `cards` SET `owner`="player1" WHERE `owner` IS NULL ORDER BY RAND() LIMIT 7');
$stmt->execute();

$stmt1 = $mysqli->prepare('UPDATE `cards` SET `owner`="player2" WHERE `owner` IS NULL ORDER BY RAND() LIMIT 7');
$stmt1->execute();

$stmt2 = $mysqli->prepare('UPDATE `cards` SET `owner`="PlayingCard" WHERE `owner` IS NULL AND `type`<>"special" ORDER BY RAND() LIMIT 1');
$stmt2->execute();

$user = $_SESSION['user'];
$stmt3 = $mysqli->prepare("SELECT card_name,color from `cards` WHERE `owner`='{$_SESSION['user']}'" );
$stmt3->execute();
$result = $stmt3->get_result();
$json = print json_encode($result->fetch_all(MYSQLI_ASSOC),JSON_PRETTY_PRINT);
}
?>
<?php 
function do_draw(){
global $mysqli;
if(!isset($_SESSION['drawn'])){
    $_SESSION['drawn']="false";
}
if($_SESSION['drawn']=="false"){
$user = $_SESSION['user'];
$stmt = $mysqli->prepare("UPDATE `cards` SET `owner`='{$user}' WHERE `owner` IS NULL ORDER BY RAND() LIMIT 1");
$stmt->execute();
$_SESSION['drawn']="true";
print json_encode('drawn');
}else{
    print json_encode("Επππ!Τι πας να κάνεις;\n Τράβηξες ήδη 1 κάρτα!");
}
}
?>
<php 
show_table(){
    header('Content-type: application/json');
    print json_encode($result->fetch_all(MYSQLI_ASSOC));
}





?>
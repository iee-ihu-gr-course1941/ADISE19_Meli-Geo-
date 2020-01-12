
<?php
 
require_once "lib/dbconnect2.php";
require_once "lib/show_board.php";
require_once "lib/reset_board.php";
require_once "lib/do_move.php";
require_once "lib/do_paso.php";
require_once "lib/do_draw.php";

$method = $_SERVER['REQUEST_METHOD'];
$request = explode('/', trim($_SERVER['PATH_INFO'],'/'));
$input = json_decode(file_get_contents('php://input'),true);


switch ($r=array_shift($request)) {
    case 'board' : 
                     switch ($b=array_shift($request)) {
                                case '':
                                case null: handle_board($method);
                                                break;
                                case 'card': handle_card($request[0]);
                                                break;
                                case 'player': handle_player($method, $request[0],$input);
                                                break;
                                case 'paso': handle_paso();
                                        break;
                                case 'draw': handle_draw();
                                        break;
                                default: header("HTTP/1.1 404 Not Found");
                                                break;
         }
         break;
    default:  header("HTTP/1.1 404 Not Found");
                        exit;
}

function handle_board($method) {
 
        if($method=='GET') {
               show_board();
        } else if ($method=='POST') {
                reset_board();
        }
}

function handle_card($x) {
        do_move($x);
}

function handle_paso(){
        do_paso();
}

function handle_draw(){
        do_draw();
}
 
function handle_player($method, $p,$input) {
        ;
}
 
?>

<?php
session_start();
   
    foreach($this->administratori as $administrator){
            $user = $administrator->username;
            $pass = $administrator->password;
    }
    echo "<br>";
    echo $user;
    echo "<br>";
    echo $pass;echo "<br>";
    $user1 = $_POST['username'];
    echo $user1;
    echo "<br>";
    $pass1 = $_POST['password'];
    echo $pass1;
    echo "<br>";

    echo session_id();echo "<br>";
    function isAdmin() {
        if ($_SESSION['ime'] == 'admin') {
        return true;
        }
        else {
        return false;
        }
       }
    $_SESSION['ime'] = "admin";
    echo isAdmin()."<br />";
if( $user == $user1 && $pass ==$pass1 && isAdmin() == 1){
        header("Location: http://localhost/mvc_app/Site/poruke");

}else{
        header("Location: http://localhost/mvc_app/Site/index");
}




   
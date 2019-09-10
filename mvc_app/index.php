<?php
require "config.php";

//this file will be like a router
$ctrl     =  "Site";

if (isset($_GET['mvccontroller'])){
    $ctrl = $_GET['mvccontroller'];
}
$ctrl   .=   "Controller";
//if in url exists this param load that controller
if(!file_exists("controller/{$ctrl}.php")){
    die("Controller does not exist");
}else{
    require_once("controller/{$ctrl}.php");
}

$method   = "";
//if in url exists this param load that method
if (isset($_GET['mvcmethod'])){
    $method = $_GET['mvcmethod'];
}


$controller = new $ctrl;
if(!method_exists($controller, $method)){
    $method = "index";
}
$controller-> $method();





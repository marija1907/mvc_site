<?php

class TestController extends Controller{

    function index(){
        $this->loadView("topview");
        echo "No information here1";
        $this->loadView("footer");
    }
    function istorija(){
        $this->loadView("topview");
        $this->loadView("Istorija");
        $this->loadView("footer");
    }
    function turizam(){
        $this->loadView("topview");
        $this->loadView("Turizam");
        $this->loadView("footer");
    }

}
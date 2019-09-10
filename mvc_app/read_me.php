<?php

//model->data, system for collecting data from db, etc
$arr = ["Peter", "Sally","John"];

//controller->without data , without presentation, just processing data, communication with model
$user = $arr[1];


//view->presetation part, that what is controller processed
echo $user;

//in this case controller is processing data from model, afer that view present that data
//idea is : model without logic, eventualy just work with data
//presentation part/view just without logic, all problem is problem with presentation
//controller must processing thing, main engine in this infrastructure
//all this components must be a phisycally separated, if we want this pattern make sense!!!
//for all of this must have main part for this pattern - ROUTER, who decide which controler will be loaded, which model will be started for which controller
//load classes
//all requests will go to the router
//in this mvc model we have just one entry point 
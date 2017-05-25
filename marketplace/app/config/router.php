<?php

$router = $di->getRouter();

// Define your routes here

  $router->add('/',["controller"=>"home","action"=>"index"]);
 

$router->handle();



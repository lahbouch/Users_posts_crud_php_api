<?php


require_once "./config/db.php";
require_once "./routes/Route.php";


$method = $_SERVER['REQUEST_METHOD'];
$path = $_SERVER['REQUEST_URI'];
$url = parse_url($path);
$route = new Route($url['path'], $method, $conn);


$route->main();

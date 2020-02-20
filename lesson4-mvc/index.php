<?php
session_start();

require_once './commons/helpers.php';

require_once './vendor/autoload.php';

use Controllers\HomeController;
use Controllers\ProductController;
use Controllers\ErrorController;

use Phroute\Phroute\RouteCollector;

$url = isset($_GET['url']) == true ? $_GET['url'] : "/";

$router = new RouteCollector();

$router->get('/', ['Controllers\HomeController', 'index']);
$router->get('add-product', ['Controllers\ProductController', 'addForm']);
$router->get('remove-product', ['Controllers\ProductController', 'remove']);
$router->post('save-add-product', ['Controllers\ProductController', 'saveAdd']);
$router->post('check-product-name', ['Controllers\ProductController', 'checkName']);

$dispatcher = new Phroute\Phroute\Dispatcher($router->getData());
$response = $dispatcher->dispatch($_SERVER['REQUEST_METHOD'], parse_url($url, PHP_URL_PATH));
echo $response;


 ?>
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


$router->get('/', function(){
    return "hello world";
});
$router->get('/products', function(){
    return "danh sách sản phẩm";
});


# NB. You can cache the return value from $router->getData() so you don't have to create the routes each request - massive speed gains
$dispatcher = new Phroute\Phroute\Dispatcher($router->getData());

$response = $dispatcher->dispatch($_SERVER['REQUEST_METHOD'], parse_url($url, PHP_URL_PATH));

// Print out the value returned from the dispatched function
echo $response;

//$url = isset($_GET['url']) == true ? $_GET['url'] : "/";
//
//
//switch ($url) {
//	case '/':
//		$ctr = new HomeController();
//		$ctr->index();
//		break;
//	case 'gioi-thieu':
//		$ctr = new HomeController();
//		$ctr->about();
//		break;
//	case 'lien-he':
//		$ctr = new HomeController();
//		$ctr->contact();
//		break;
//	case 'chi-tiet-san-pham':
//		$ctr = new ProductController();
//		$ctr->detail();
//		break;
//	case 'add-product':
//		$ctr = new ProductController();
//		$ctr->addForm();
//		break;
//	case 'save-add-product':
//		$ctr = new ProductController();
//		$ctr->saveAdd();
//		break;
//	case 'remove-product':
//		$ctr = new ProductController();
//		$ctr->remove();
//		break;
//	case 'check-product-name':
//		$ctr = new ProductController();
//		$ctr->checkName();
//		break;
//	default:
//		$ctr = new ErrorController();
//		$ctr->notfoundErr();
//		break;
//}

 ?>
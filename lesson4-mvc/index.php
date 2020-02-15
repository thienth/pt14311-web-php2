<?php
session_start();

require_once './commons/helpers.php';

require_once './controllers/HomeController.php';
require_once './controllers/ProductController.php';
require_once './controllers/ErrorController.php';


$url = isset($_GET['url']) == true ? $_GET['url'] : "/";


switch ($url) {
	case '/':

		$ctr = new HomeController();
		$ctr->index();
		break;
	case 'gioi-thieu':

		$ctr = new HomeController();
		$ctr->about();
		break;
	case 'lien-he':

		$ctr = new HomeController();
		$ctr->contact();
		break;
	case 'chi-tiet-san-pham':

		$ctr = new ProductController();
		$ctr->detail();
		break;
	case 'remove-product':

		$ctr = new ProductController();
		$ctr->remove();
		break;
	
	default:

		$ctr = new ErrorController();
		$ctr->notfoundErr();
		break;
}

 ?>
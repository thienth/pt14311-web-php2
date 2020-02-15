<?php 
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
	case 'danh-sach-san-pham':

		$ctr = new ProductController();
		$ctr->list();
		break;
	
	default:

		$ctr = new ErrorController();
		$ctr->notfoundErr();
		break;
}

 ?>
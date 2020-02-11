<?php 
require_once './controllers/HomeController.php';
require_once './controllers/ProductController.php';
require_once './controllers/ErrorController.php';


$url = isset($_GET['url']) == true ? $_GET['url'] : "/";


switch ($url) {
	case '/':
		# code... hiển thị trang chủ
		$ctr = new HomeController();
		$ctr->index();
		break;
	case 'gioi-thieu':
		# code... hiển thị trang about
		$ctr = new HomeController();
		$ctr->about();
		break;
	case 'lien-he':
		# code... hiển thị trang contact
		$ctr = new HomeController();
		$ctr->contact();
		break;
	case 'chi-tiet-san-pham':
		# code... hiển thị trang detail
		$ctr = new ProductController();
		$ctr->detail();
		break;
	case 'danh-sach-san-pham':
		# code... hiển thị trang list
		$ctr = new ProductController();
		$ctr->list();
		break;
	
	default:
		# code..hiển thị trang 404 - not found.
		$ctr = new ErrorController();
		$ctr->notfoundErr();
		break;
}

 ?>
<?php 
require_once './models/Product.php';
require_once './models/Category.php';
class HomeController{

	public function index(){

		$products = Product::getAll();

		include_once './views/home/index.php';
	}
	public function about(){
		echo "Hiển thị Giới Thiệu";
	}
	public function contact(){
		echo "Hiển thị liên hệ";
	}
}

 ?>
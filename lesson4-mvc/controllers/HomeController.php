<?php 
namespace Controllers;
use Models\Product;
class HomeController extends BaseController {

	public function index(){

		$products = Product::getAll();

		$this->render('home.index', ['products' => $products]);
	}
	public function about(){
		echo "Hiển thị Giới Thiệu";
	}
	public function contact(){
		echo "Hiển thị liên hệ";
	}
}

 ?>
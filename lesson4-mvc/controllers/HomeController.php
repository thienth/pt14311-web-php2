<?php 
namespace Controllers;
use Models\Product;
class HomeController extends BaseController {

	public function index(){
//        dd(1);
		$products = Product::getAll();

		$this->render('layouts.admin');
//        $this->render('home.list-product', ['products' => $products]);
	}
	public function about(){
		echo "Hiển thị Giới Thiệu";
	}
	public function contact(){
		echo "Hiển thị liên hệ";
	}
}

 ?>
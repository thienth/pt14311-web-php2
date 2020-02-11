<?php 
class HomeController{

	public function index(){
		$arr = [1,2,3,3,45,6,7,8];

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
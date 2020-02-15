<?php
require_once './models/Product.php';
class ProductController{

	public function remove(){
		//1. Lấy id từ url
        $proid = isset($_GET['id']) ? $_GET['id'] : -1;
        if($proid <= 0){
            header("location: " . BASE_URL . "?msg=Sai thông tin mã sản phẩm");
            die;
        }
        //2. Thực hiện xóa khỏi csdl
        if(Product::destroy($proid)) {
            header("location: " . BASE_URL . "?msg=Xóa sản phẩm thành công");
            die;
        }
        //3. điều hướng website về trang danh sách để ktra kết quả
        header("location: " . BASE_URL . "?msg=Xóa không thành công");
        die;
	}
	public function detail(){
		echo "Hiển thị trang chi tiết sản phẩm";
	}
}

 ?>
<?php
require_once './models/Product.php';
require_once './models/Category.php';
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

	public function addForm(){
        // danh sách của Danh mục
        $cates = Category::getAll();
	    include_once './views/product/add-form.php';
    }

	public function saveAdd(){
        // danh sách của Danh mục
        $requestData = $_POST;
        $file = $_FILES['image'];
        $model = new Product();
        $model->fill($requestData);
        $msg = $model->insert() == true ? "Tạo tài khoản thành công!" : "Tạo tài khoản thất bại!";
        header('location: ' . BASE_URL . "?msg=$msg");
        die;
    }

	public function checkName(){
	    $name = $_POST['name'];
        $sql = "select * from " . (new Product())->table . " where name = '$name'";
        $data = Product::customQuery($sql);
        echo count($data) == 0 ? "true" : "false";
    }
}

 ?>
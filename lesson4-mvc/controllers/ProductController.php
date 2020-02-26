<?php
namespace Controllers;
use Models\Product;
use Models\Category;
class ProductController extends BaseController {

    public function index(){

        $products = Product::all();
        $this->render('product.index', compact('products'));
    }

//	public function remove($id){
//		//1. Lấy id từ url
//        if(!$id){
//            header("location: " . BASE_URL . "products?msg=Sai thông tin mã sản phẩm");
//            die;
//        }
//        //2. Thực hiện xóa khỏi csdl
//        if(Product::destroy($id)) {
//            header("location: " . BASE_URL . "?msg=Xóa sản phẩm thành công");
//            die;
//        }
//        //3. điều hướng website về trang danh sách để ktra kết quả
//        header("location: " . BASE_URL . "products?msg=Xóa không thành công");
//        die;
//	}
//
//	public function addForm(){
//        // danh sách của Danh mục
//        $cates = Category::getAll();
////	    include_once './views/product/add-form.php';
//        $this->render('product.add-form', compact('cates'));
//    }
//
//	public function saveAdd(){
//        $model = new Product();
//        $requestData = $_POST;
//
//        $model->image = img_upload($_FILES['image']);
//
//        $model->fill($requestData);
//        $msg = $model->insert() == true ? "Tạo tài khoản thành công!" : "Tạo tài khoản thất bại!";
//        header('location: ' . BASE_URL . "products?msg=$msg");
//        die;
//    }
//
//	public function checkName(){
//	    $name = $_POST['name'];
//        $sql = "select * from " . (new Product())->table . " where name = '$name'";
//        $data = Product::customQuery($sql);
//        echo count($data) == 0 ? "true" : "false";
//    }
}

 ?>
<?php
namespace Controllers;
use Models\Product;
use Models\Category;
class ProductController extends BaseController {

    public function index(){

        $products = Product::all();

        $this->render('product.index', compact('products'));
    }

	public function remove($id){
		//1. Lấy id từ url
        if(!$id){
            header("location: " . BASE_URL . "products?msg=Sai thông tin mã sản phẩm");
            die;
        }
        //2. Thực hiện xóa khỏi csdl
        if(Product::destroy($id)) {
            header("location: " . BASE_URL . "products?msg=Xóa sản phẩm thành công");
            die;
        }
        //3. điều hướng website về trang danh sách để ktra kết quả
        header("location: " . BASE_URL . "products?msg=Xóa không thành công");
        die;
	}

	public function addForm(){
        // danh sách của Danh mục
        $cates = Category::all();
        $this->render('product.add-form', compact('cates'));
    }

	public function editForm($id){
        $model = Product::find($id);
        if(!$model){
            header("location: " . BASE_URL . "products?msg=Sai thông tin mã sản phẩm");
            die;
        }
        // danh sách của Danh mục
        $cates = Category::all();
        $this->render('product.edit-form', compact('cates', 'model'));
    }

	public function saveAdd(){
        $model = new Product();
        $requestData = $_POST;

        $model->image = img_upload($_FILES['image']);

        $model->fill($requestData);

        $msg = $model->save() == true ? "Tạo sản phẩm thành công!" : "Tạo sản phẩm thất bại!";
        header('location: ' . BASE_URL . "products?msg=$msg");
        die;
    }

	public function saveEdit(){
        $id = $_POST['id'];
        $model = Product::find($id);
        if(!$model){
            header("location: " . BASE_URL . "products?msg=Sai thông tin mã sản phẩm");
            die;
        }

        $requestData = $_POST;

        $filename = img_upload($_FILES['image']);
        if($filename != null){
            $model->image = $filename;
        }

        $model->fill($requestData);

        $msg = $model->save() == true ? "Cập nhật thông tin sản phẩm thành công!" : "Cập nhật thông tin sản phẩm thất bại!";
        header('location: ' . BASE_URL . "products?msg=$msg");
        die;
    }

	public function checkName(){
	    $name = trim($_POST['name']);
	    $id = $_POST['id'];

        if($id){
            $existed = Product::where('name', $name)
                                ->where('id', '!=', $id)
                                ->count();
        }else{
            $existed = Product::where('name', $name)->count();
        }
        echo $existed == 0 ? "true" : "false";
    }
}

 ?>
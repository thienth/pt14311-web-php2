<?php
require_once "./models/BaseModel.php";
require_once "./models/Category.php";
class Product extends BaseModel{
    protected $table = "products";

    public function getCategory(){
        return Category::findOne($this->cate_id);
    }
}

?>
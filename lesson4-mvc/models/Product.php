<?php
require_once "./models/BaseModel.php";
require_once "./models/Category.php";
class Product extends BaseModel{
    public $table = "products";

    private $fillable = ['name', 'price', 'views', 'star', 'short_desc', 'detail'];

    public function fill($dataArr){
        foreach ($this->fillable as $col){
            $this->{$col} = $dataArr[$col];
        }
    }

    public function getCategory(){
        return Category::findOne($this->cate_id);
    }

    public function insert(){
        try{


            $insertQuery = "insert into $this->table 
                              (name, price, views, star, short_desc, detail)
                            values 
                              ('$this->name', '$this->price', '$this->views',
                                '$this->star','$this->short_desc','$this->detail')";
            $stmt = $this->connect->prepare($insertQuery);
            $stmt->execute();
            return true;
        }catch (Exception $ex){
            var_dump($ex->getMessage());
            return false;
        }

    }
}

?>
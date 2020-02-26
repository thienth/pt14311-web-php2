<?php
namespace Models;
use Illuminate\Database\Eloquent\Model;
class Product extends Model{
    protected $table = "products";

    protected $fillable = ['name', 'cate_id', 'price', 'views', 'star', 'short_desc', 'detail'];

    public function getCategory(){
        return Category::find($this->cate_id);
    }

}

?>
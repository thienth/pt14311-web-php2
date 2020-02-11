<?php 
class Animal{

	const MAX_AGE = 50;
	var $name;
	var $age;

	static $hairColor = "blue";

	// function __construct($name, $age){
	// 	$this->name = $name;
	// 	$this->age = $age;
	// }

	static function all(){
		echo "Lay het danh sach animal";
	}

	static function where($col, $condition, $value){
		$model = new static();
		$model->sqlQuery = "select * from users where $col $condition $value";
		return $model;
	}

	function get(){
		$this->executeQuery = true;
		return $this;
	}

	function first(){
		$this->getFirstRecord = true;
		return $this;
	}

}



 ?>
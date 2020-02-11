<?php 
// tạo ra 1 kiểu dữ liệu mới tên là Anomal
class Animal{
	
	function running($km){
		$loseWeight = $km/2;
		$this->weight -= $loseWeight;
		echo "Hiện tại số cân nặng của " . $this->name . " là: " . $this->weight;
	}
}

 ?>
<?php 
class NhanVien{

	var $ten;
	var $diaChi;

	function nhapThongTin($ten = "", $diaChi = ""){
		$this->ten = $ten;
		$this->diaChi = $diaChi;
	}

	function hienThiThongTin(){
		echo "Ho va ten: " . $this->ten;
		echo "<br>";
		echo "Dia chi: " . $this->diaChi;
	}
}


 ?>
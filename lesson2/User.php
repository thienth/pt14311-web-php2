<?php 
class User{

	const MAX_AGE = 100;
	
	function __construct(){
		$this->connect = new PDO("mysql:host=127.0.0.1;dbname=pt14314-web;charset=utf8", 
			"root", "123456");
	}
}


 ?>
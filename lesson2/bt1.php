<?php 
require_once './Dog.php';
$alex = new Dog();
Dog::all();
$alex->get();

var_dump($alex);


 ?>
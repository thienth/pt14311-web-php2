<?php 
require_once './Animal.php';
require_once './User.php';
// $xuan = new Animal("Nguyen Truong Xuan", 28);

// $thanh = new Animal("Nguyen Van Thanh", 29);

// var_dump($xuan, $thanh);

echo Animal::MAX_AGE;
echo "<br>";
echo User::MAX_AGE;
echo "<br>";

echo Animal::$hairColor;
echo "<br>";
Animal::$hairColor = "white";
echo Animal::$hairColor;
echo "<br>";
Animal::all();
echo "<br>";

var_dump(Animal::where('id', '>', 100)->get()->first());








 ?>
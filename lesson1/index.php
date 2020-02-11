<?php 
require_once './Animal.php';
require_once './Car.php';
$miu = new Animal();
$miu->name = "Mèo điên";
$miu->weight = 40;
echo "Em tên là: " . $miu->name . "-" . $miu->weight;
echo "<br>";
$miu->running(2);
echo "<br>";
$rex = new Animal();
$rex->id = 321;
$rex->name = "Rex chú chó thám tử";
$rex->running();

// echo "<pre>";
// var_dump($miu, $rex);
 ?>

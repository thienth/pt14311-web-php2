<?php
session_start();

require_once './commons/helpers.php';

require_once './vendor/autoload.php';

$url = isset($_GET['url']) == true ? $_GET['url'] : "/";

use Commons\Routing;

Routing::customRouting($url);




 ?>
<?php
/**
 * Created by PhpStorm.
 * User: ginv2
 * Date: 2/20/20
 * Time: 13:20
 */

namespace Controllers;

use Jenssegers\Blade\Blade;
class BaseController
{
    public function render($view, $dataArr = []){
        $blade = new Blade('views', 'storage');

        echo $blade->make($view, $dataArr)->render();
    }
}
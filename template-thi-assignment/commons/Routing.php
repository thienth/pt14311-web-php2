<?php
namespace Commons;
use Phroute\Phroute\RouteCollector;
use Phroute\Phroute\Dispatcher;
class Routing
{
    public static function customRouting($url){


        $router = new RouteCollector();

        $router->get('/', ['Controllers\HomeController', 'index']);

        $dispatcher = new Dispatcher($router->getData());
        $response = $dispatcher->dispatch($_SERVER['REQUEST_METHOD'], parse_url($url, PHP_URL_PATH));
        echo $response;
    }
}
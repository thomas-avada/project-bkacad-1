<?php
namespace App\Core\Http;

class Request
{

    public function get($key)
    {
        return isset($_GET[$key]) ? $_GET[$key] : '';
    }

    public function post($key)
    {
        return isset($_POST[$key]) ? $_POST[$key] : '';
    }

    public function all()
    {
        return $_REQUEST;
    }

    public function url()
    {
        return trim(strtok($_SERVER["REQUEST_URI"],'?'), '/');
    }

    public function method()
    {
        return $_SERVER['REQUEST_METHOD'];
    }
    public function isGetMethod()
    {
        return $_SERVER['REQUEST_METHOD'] == 'GET';
    }
    public function isPostMethod()
    {
        return $_SERVER['REQUEST_METHOD'] == 'POST';
    }

    public function getHttpHost()
    {
        return isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '';
    }

    public function getHttpOrigin()
    {
        return isset($_SERVER['HTTP_ORIGIN']) ? $_SERVER['HTTP_ORIGIN'] : '';
    }

    public function getHttpReferer()
    {
        return isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '';
    }
}
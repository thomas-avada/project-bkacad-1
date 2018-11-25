<?php
namespace App\Core\Http;

use App\Core\Http\Request;

class Redirect
{
    public function __construct(Request $request)
    {
        $this->_request = $request;
    }

    public function to($url = '')
    {
        header('Location: ' . $url);
        exit();
    }

    public function toRoute($route = '')
    {
        header('Location: ' . $this->_request->getHttpOrigin(). '/' . $route);
        exit();
    }

    public function back()
    {
        $this->to($this->_request->getHttpReferer());
    }

    public function home()
    {
        $this->toRoute();
    }
}
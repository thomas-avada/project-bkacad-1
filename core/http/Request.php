<?php
namespace App\Core\Http;

class Request
{
    const PUBLIC_FOLDER = 'public/storage/images/';

    public function get($key)
    {
        return isset($_GET[$key]) ? $_GET[$key] : '';
    }

    public function has($key)
    {
        return isset($_REQUEST[$key]) ? true : false;
    }

    public function hasFile($key)
    {
        return $_FILES[$key]['size'] > 0 ? true : false;
    }

    public function hasPost($key)
    {
        return isset($_POST[$key]) ? true : false;
    }

    public function hasGet($key)
    {
        return isset($_GET[$key]) ? true : false;
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

    public function file($key = null)
    {
        if(is_null($key)){
            return $_FILES;
        }
        return $_FILES[$key];
    }

    public function store($index, $target = null)
    {
        $target_dir = is_null($target) ? self::PUBLIC_FOLDER : $target;
        $imageFileType = strtolower(pathinfo(basename($_FILES[$index]["name"]), PATHINFO_EXTENSION));
        $target_file = $target_dir . uniqid() . '.' . $imageFileType;
        $uploadOk = 1;
        
        // Check if image file is a actual image or fake image
        if($this->hasPost('submit')) {
            $check = getimagesize($_FILES[$index]["tmp_name"]);
            if($check !== false) {
                throw new \Exception("File is an image - " . $check["mime"] . ".");
                $uploadOk = 1;
            } else {
                throw new \Exception("File is not an image.");
                $uploadOk = 0;
            }
        }
        // Check if file already exists
        if (file_exists($target_file)) {
            throw new \Exception( "Sorry, file already exists.");
            $uploadOk = 0;
        }
        // Check file size
        if ($_FILES[$index]["size"] > 500000) {
            throw new \Exception("Sorry, your file is too large.");
            $uploadOk = 0;
        }
        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
            throw new \Exception( "Sorry, only JPG, JPEG, PNG & GIF files are allowed.");
            $uploadOk = 0;
        }
        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            throw new \Exception("Sorry, your file was not uploaded.");
            return false;
        // if everything is ok, try to upload file
        } else {
            if (move_uploaded_file($_FILES[$index]["tmp_name"], $target_file)) {
                return $target_file;
                // echo "The file ". basename( $_FILES[$index]["name"]). " has been uploaded.";
            } else {
                throw new \Exception("Sorry, there was an error uploading your file.");
            }
        }
    }
}
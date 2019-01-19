<?php
namespace App\Core\Session;

//use App\Core\Foundation\CollectionBag;

class Session {
    protected $started = false;

    protected $closed = true;

    const ADMIN_ROLE = 1;
    const NORMAL_ROLE = 2;

    /**
     * Get all session items
     * @return mixed
     */
    public function all()
    {
        return $_SESSION;
    }

    public function get($key)
    {
        return $_SESSION[$key];
    }

    public function set($key, $value)
    {
        $_SESSION[$key] = $value;
        return $this;
    }

    public function has($key)
    {
        return isset($_SESSION[$key]) ? true : false;
    }

    public function isEmpty($key)
    {
        return empty($this->get($key)) ? true : false;
    }

    public function forget($key = null){
        if(is_null($key)){
            return $this;
        }
        unset($_SESSION[$key]);
        return $this;
    }

    public function flush()
    {
        if(session_unset()){
            return $this;
        }
    }

    public function start()
    {
        if(\PHP_SESSION_ACTIVE === session_status()){
            throw new \RuntimeException('Failed to start the session: already started by PHP.');
        }
        if (!session_start()) {
            throw new \RuntimeException('Failed to start the session');
        }
        $this->started = true;
        $this->closed = false;
        return true;
    }

    public function terminate()
    {
        if($this->isStarted()){
            session_destroy();
            $this->closed = true;
        }
    }

    public function isStarted()
    {
        if ($this->started || \PHP_SESSION_ACTIVE === session_status()) {
            return true;
        }
        return false;
    }

    public function customer()
    {
        return $this->get('customer');
    }

    public function isLoggedIn()
    {
        return $this->has('customer') ? true : false;
    }

    public function isAdmin()
    {
        return $this->getRole() == self::ADMIN_ROLE ? true :false;
    }

    public function getRole()
    {
        return $this->customer()['role_id'];
    }

    public function logout()
    {
        if(!$this->isLoggedIn()){
            flash()->error('You cannot log out');
            return redirect()->toRoute('login');
        }
        session_destroy();
        session_start();
        flash()->success('You have successfully logged out');
        return redirect()->home();

    }

    public function setCustomer($key, $value)
    {
        $_SESSION['customer'][$key] = $value;
        return $this;
    }
}
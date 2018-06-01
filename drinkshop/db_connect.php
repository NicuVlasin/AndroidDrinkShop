<?php
/**
 * Created by PhpStorm.
 * User: Nicu
 * Date: 30/05/2018
 * Time: 16:56
 */

class DB_Connect{
    private $conn;

    public function connect()
    {
        require_once 'config.php';
        $this -> conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);
            return $this-> conn;
    }
}
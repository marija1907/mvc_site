<?php
//singleton
class Database{
    public static $conn;
    public static function getConnection(){
        if(!self::$conn){
            self::$conn = new PDO("mysql:host=localhost;dbname=obilazak","root","");
        }
        return self::$conn;
    }
}
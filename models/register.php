<?php
//Herencia
class User extends Database{

    public function all(){
        try{
            $result = parent::connect()->prepare("SELECT * FROM regis");
            $result->execute();
            return $result->fetchAll();
        }catch(Exception $e){
            die($e->getMessage());
        }
    }

    public function register($data){
        try{
            $result = parent::connect()->prepare("INSERT INTO regis (name, email, password) VALUES (?,?,?)");
            $result->bindParam(1, $data['name'], PDO::PARAM_STR);
            $result->bindParam(2, $data['email'], PDO::PARAM_STR);
            $result->bindParam(3, $data['password'], PDO::PARAM_STR);
            return $result->execute();
        }catch (Exception $e){
           die("Error User->register() " . $e->getMessage());
        }
    }


}

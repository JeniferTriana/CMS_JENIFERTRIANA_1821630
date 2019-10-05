<?php
//Herencia
class publication extends Database{

    public function all(){
        try{
            $result = parent::connect()->prepare("SELECT * FROM publications ");
            $result->execute();
            return $result->fetchAll();
        }catch(Exception $e){
            die($e->getMessage());
        }
    }

    

    public function register($data){
        try{
            $result = parent::connect()->prepare("INSERT INTO publications (title, description, image) VALUES (?,?,?)");
            $result->bindParam(1, $data['title'], PDO::PARAM_STR);
            $result->bindParam(2, $data['description'], PDO::PARAM_STR);
            $result->bindParam(3, $data['image'], PDO::PARAM_STR);
            return $result->execute();
        }catch (Exception $e){
           die("Error publications->register() " . $e->getMessage());
        }
    }

    public function find($id){
        try{
            $result = parent::connect()->prepare("SELECT * FROM publications WHERE id_p = ?");
            $result->bindParam(1, $id, PDO::PARAM_INT);
            $result->execute();
            return $result->fetch();
        }catch(Exception $e){
            die($e->getMessage());
        }
    }

    public function update_register($data){
        try{
            $result = parent::connect()->prepare("UPDATE publications SET title = ?, description = ? WHERE id_p = ?");
            $result->bindParam(1, $data['title'], PDO::PARAM_STR);
            $result->bindParam(2, $data['description'], PDO::PARAM_STR);
            $result->bindParam(3, $data['id_p'], PDO::PARAM_INT);
            return $result->execute();
        }catch (Exception $e){
            die("Error publications->update_register() " . $e->getMessage());
        }
    }
       public function delete_register($data){
        try{
            $result = parent::connect()->prepare("DELETE FROM publications   WHERE id_p = ?");
            $result->bindParam(1, $data['id'], PDO::PARAM_INT);
            return $result->execute();
        }catch (Exception $e){
            die("Error publications->update_register() " . $e->getMessage());
        }
    }
}




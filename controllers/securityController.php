<?php

class securityController extends Security {

    public function login(){
        $user = parent::validateLogin($_POST['email']);

        if(!is_object($user)) die('Ingreso incorrecto.');
      if(is_object($user)){

        if(password_verify($_POST['password'], $user->password)){
        
           $_SESSION['user'] = $user;

           switch($user->rol_id){
           case 1:
             return header ('location:?controller=user');
           break;
          case 2:
             return header ('location:?controller=publication');
           break;
           default:;
           }
         } 
          return header ('location:?controller=index&method=login)'); 
        }
      }
       
    public function logout(){
        unset($_SESSION['user']);
        session_destroy();
        header('location:?controller=index');
    }

}
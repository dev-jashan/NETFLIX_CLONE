<?php
namespace application\model;

use  application\core\DatabaseFactory;
require_once '..\application\core\DataBaseFactory.php';

class LoginModel{
  
   public static function getUser($user_email)
   {
      return DatabaseFactory::getFactory()->query('SELECT * from netflix_users WHERE userEmail=?',$user_email)->fetchAll();
   }
  
}
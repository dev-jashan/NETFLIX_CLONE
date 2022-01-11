<?php
namespace application\model;

use  application\core\DatabaseFactory;

require_once '..\application\core\DataBaseFactory.php';

class RegisterModel{
  
   // create a new user
   public static function createUser($user_name,$user_email,$user_cardnum,$user_cvv,$user_pass,$user_plan,$card_monthexp,$card_yearexp)
   {
      return DatabaseFactory::getFactory()->query("INSERT INTO netflix_users (userName,userEmail,cardNum,cvv,password,userPlan,expMonth,expYear) VALUES (?,?,?,?,?,?,?,?)",$user_name,$user_email,$user_cardnum,$user_cvv,$user_pass,$user_plan,$card_monthexp,$card_yearexp);
   }
  
   // check for a duplicate
   public static function checkUser($user_email)
   {
      return DatabaseFactory::getFactory()->query('SELECT * from netflix_users WHERE userEmail=?',$user_email)->numRows();
   }

   // get the id of current registered user
   public static function getUserID($user_email)
   {
      return DatabaseFactory::getFactory()->query('SELECT * from netflix_users WHERE userEmail=?',$user_email)->fetchAll();
   }

}
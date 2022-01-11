<?php
namespace application\model;

use  application\core\DatabaseFactory;
require_once '..\application\core\DataBaseFactory.php';

class ListModel{
   
   // create list in the database
    public static function createList($movieId)
   {
      return DatabaseFactory::getFactory()->query("INSERT INTO netflix_list (movie_ID,UserID) VALUES (?,?)",$movieId,$_SESSION['userId']);
   }

   // to get all the list of the user
   public static function getuserList()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM netflix_list WHERE UserID=?  GROUP BY movie_ID',$_SESSION['userId'])->fetchAll();
   }

}
<?php
namespace application\model;

use  application\core\DatabaseFactory;
require_once '..\application\core\DataBaseFactory.php';

class ListModel{
   
   // create list in the database
    public static function createList($movieId)
   {
      return DatabaseFactory::getFactory()->query("INSERT INTO netflix_list (movie_ID) VALUES (?)",$movieId);
   }

   

}
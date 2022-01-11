<?php
namespace application\model;

use  application\core\DatabaseFactory;
require_once '..\application\core\DataBaseFactory.php';

class MainModel{
  
   // to get all the movies
   public static function getAllMovies()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  GROUP BY name')->fetchAll();
   }

   // to get all the netfix originals
   public static function getAllOriginals()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE specials=? GROUP BY name','originals')->fetchAll();
   }
   
   // to get all the action
   public static function getAction()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',28)->fetchAll();
   }

   // to get all the adventure
   public static function getAdventure()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',12)->fetchAll();
   }
   // get all science movies
   public static function getScience()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',878)->fetchAll();
   }

   // get all the history movies
   public static function getHistory()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',36)->fetchAll();
   }

   // get all the thriller movies
   public static function getThriller()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',53)->fetchAll();
   }

   // get all the drama movies
   public static function getDrama()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',18)->fetchAll();
   }

   // get all the science series
   public static function getTvScience()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',10765)->fetchAll();
   }

   // get all the action series
   public static function getTvAction()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',10759)->fetchAll();
   }

   // get all the crime series
   public static function getTvCrime()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',80)->fetchAll();
   }

   //get all the family movies
   public static function getTvFamily()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',10751)->fetchAll();
   }

   // get all the animartion movies
   public static function getAnimation()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',16)->fetchAll();
   }

   // get all the comedy movies
   public static function getComedy()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',35)->fetchAll();
   }

   // get all the horror movies
   public static function getHorror()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',27)->fetchAll();
   }

   // get all the mystery movies
   public static function getMystery()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',9648)->fetchAll();
   }

   // get all the romantic movies
   public static function getRomantic()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',10749)->fetchAll();
   }

   // get all the documentaries movies
   public static function getDocumentaries()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE genre_id=?',99)->fetchAll();
   }

   
   // check if their is noting adding in the list
   public static function checkList()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM netflix_list')->numRows();
   }

   //search for a list in all the moves 
   public static function searchMoviesList($id)
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE ID=? GROUP BY name',$id)->fetchAll();
   }

   // add all the videos liked by the user
   public static function createLiked($movieId)
   {
      return DatabaseFactory::getFactory()->query("INSERT INTO netflix_liked (like_id,UserID) VALUES (?,?)",$movieId,$_SESSION['userId']);
   }

   // get all the videos liked by the user
   public static function getuserLiked()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM netflix_liked WHERE UserID=?  GROUP BY like_id',$_SESSION['userId'])->fetchAll();
   }
}
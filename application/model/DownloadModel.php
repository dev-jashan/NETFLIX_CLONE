<?php
namespace application\model;

use  application\core\DatabaseFactory;
require_once '..\application\core\DataBaseFactory.php';

class DownloadModel{
   
   // create list in the database
    public static function createDownload($movieId)
   {
      return DatabaseFactory::getFactory()->query("INSERT INTO netflix_download (download_id) VALUES (?)",$movieId);
   }

   public static function getDownload()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM netflix_download  GROUP BY download_id')->fetchAll();
   }
   // check if their is noting adding in the list
   public static function checkDownload()
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM netflix_download')->numRows();
   }

   public static function get($id)
   {
      return DatabaseFactory::getFactory()->query('SELECT * FROM all_netflix  WHERE ID=? GROUP BY name',$id)->fetchAll();
   }
}
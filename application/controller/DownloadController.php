<?php

namespace application\controller;
use application\core\Controller;
use application\model\DownloadModel;
use application\model\MainModel;


require_once '..\application\core\Controller.php';
require_once '..\application\model\DownloadModel.php';
require_once '..\application\model\MainModel.php';

class DownloadController extends Controller{

    public function __construct()
    {  
        parent::__construct();
    }
    
    public function index()
    {
        $this->View->renderDownload('download/index');
    }  

    public static function yourDownload(){
        if(isset($_POST['data'])){
            $downloadList=$_POST['data'];
            $movieId=json_decode($downloadList,true);
            DownloadModel::createDownload($movieId);
            print_r($movieId);
        }
    }  
    public static function sendDownload(){
        $all_movies=array();
        $get_all_movies=MainModel::getAllMovies();
        $get_all_downloads=DownloadModel::getDownload();
        $check_download=DownloadModel::checkDownload();
       
        foreach ($get_all_downloads as $value) {
            //print_r($value['download_id']);
            $get=DownloadModel::get($value['download_id']);
            //print_r($get);
            array_push($all_movies,$get);
          }
        echo json_encode($all_movies);
    }  
}
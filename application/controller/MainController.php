<?php

namespace application\controller;
use application\core\Controller;
use application\model\MainModel;
use application\model\ListModel;



require_once '..\application\core\Controller.php';
require_once '..\application\model\MainModel.php';
require_once '..\application\model\ListModel.php';



class MainController extends Controller{

    public function __construct()
    {
       
        parent::__construct();
    }
    
    public function index()
    {
        
        $this->View->renderMain('main/index');
        
    }

    // to get all the movies of the netflix
    public static function allNetfix(){
        
        // all variables declared;
        $all_movies=array();
        $list=array();
        $get_all_movies=MainModel::getAllMovies();
        $get_adventure=MainModel::getAdventure();
        $get_action=MainModel::getAction();
        $get_thriller=MainModel::getThriller();
        $get_comedy=MainModel::getComedy();
        $get_romance=MainModel::getRomantic();
        $get_horror=MainModel::getHorror();
        $get_originals=MainModel::getAllOriginals();
        $get_science=MainModel::getScience();
        $get_history=MainModel::getHistory();
        $get_drama=MainModel::getDrama();
        $get_tv_science=MainModel::getTvScience();
        $get_tv_action=MainModel::getTvAction();
        $get_tv_crime=MainModel::getTvCrime();
        $get_tv_family=MainModel::getTvFamily();
        $get_animation=MainModel::getAnimation();
        $get_mystery=MainModel::getMystery();
        $get_documentaries=MainModel::getDocumentaries();
        $getUserList=ListModel::getuserList();
        $get_liked=MainModel::getuserLiked();

        foreach ($getUserList as $value) {
            
            $get=MainModel::searchMoviesList($value['movie_ID']);
            array_push($list,$get);
        }
        
        array_push($all_movies,$get_all_movies,$get_adventure,$get_action,$get_thriller,$get_comedy,$get_romance,$get_horror
                ,  $get_originals,$get_science,$get_history,$get_drama,$get_tv_science,$get_tv_action,$get_tv_crime
                ,$get_tv_family,$get_animation,$get_mystery,$get_documentaries,$list,$get_liked );
        
        
        echo json_encode($all_movies); 
    }

    // get all the liked videos for the javascript and send it to the db
    public static function sendLiked(){
        if(isset($_POST['data'])){
            $liked_list=$_POST['data'];
            $movieId=json_decode($liked_list,true);
            MainModel::createLiked($movieId);
            print_r($movieId);
        }

    }

    // retrieve all the liked videos from the db
    public static function getLiked(){
        if(isset($_POST['data'])){
            $liked_list=$_POST['data'];
            $movieId=json_decode($liked_list,true);
            MainModel::createLiked($movieId);
            print_r($movieId);
        }

    }
}
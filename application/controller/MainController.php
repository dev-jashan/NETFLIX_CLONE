<?php

namespace application\controller;
use application\core\Controller;
use application\model\MainModel;


require_once '..\application\core\Controller.php';
require_once '..\application\model\MainModel.php';


class MainController extends Controller{

    public function __construct()
    {
       
        parent::__construct();
    }
    
    public function index()
    {
        
        $this->View->renderMain('main/index');
        
    }

    public static function allNetfix(){
        
        // all variables declared;
        $all_movies=array();
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

        // push all the movies with differet genres
        array_push($all_movies,$get_all_movies,$get_adventure,$get_action,$get_thriller,$get_comedy,$get_romance,$get_horror
                ,  $get_originals,$get_science,$get_history,$get_drama,$get_tv_science,$get_tv_action,$get_tv_crime
                ,$get_tv_family,$get_animation,$get_mystery,$get_documentaries );
        
        // encode the array to json and send to frontend
        echo json_encode($all_movies); 

        //print_r($get_movies);
    }
    
}
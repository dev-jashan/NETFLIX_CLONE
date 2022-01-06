<?php

namespace application\controller;
use application\core\Controller;
use application\model\ListModel;

require_once '..\application\core\Controller.php';
require_once '..\application\model\ListModel.php';


class ListController extends Controller{

    public function __construct()
    {
       
        parent::__construct();
    }
    
    // add movie id to the list
    public static function yourList(){
        if(isset($_POST['data'])){
            $movieList=$_POST['data'];
            $movieId=json_decode($movieList,true);
            ListModel::createList($movieId);
            print_r($movieId);
        }
    }    
    
}
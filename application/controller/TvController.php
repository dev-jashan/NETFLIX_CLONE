<?php

namespace application\controller;
use application\core\Controller;


require_once '..\application\core\Controller.php';


class TvController extends Controller{

    public function __construct()
    {  
        parent::__construct();
    }
    
    public function index()
    {
        $this->View->renderTv('tv/index');
    }   
}
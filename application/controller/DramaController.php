<?php

namespace application\controller;
use application\core\Controller;


require_once '..\application\core\Controller.php';


class DramaController extends Controller{

    public function __construct()
    {  
        parent::__construct();
    }
    
    public function index()
    {
        $this->View->renderDrama('drama/index');
    }   
}
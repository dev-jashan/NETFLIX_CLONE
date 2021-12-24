<?php

namespace application\controller;
use application\core\Controller;


require_once '..\application\core\Controller.php';


class IndexController extends Controller{

    public function __construct()
    {
       
        parent::__construct();
    }
    
    public function index()
    {
        
        $this->View->renderIndex('index/index');
        
    }

    
    
}
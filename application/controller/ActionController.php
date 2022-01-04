<?php

namespace application\controller;
use application\core\Controller;


require_once '..\application\core\Controller.php';


class ActionController extends Controller{

    public function __construct()
    {  
        parent::__construct();
    }
    
    public function index()
    {
        $this->View->renderAction('action/index');
    }   
}
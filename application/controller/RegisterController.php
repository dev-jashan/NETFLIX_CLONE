<?php

namespace application\controller;
use application\core\Controller;


require_once '..\application\core\Controller.php';


class RegisterController extends Controller{

    public function __construct()
    {
       
        parent::__construct();
    }
    
    public function index()
    {
        
        $this->View->renderRegister('register/index');
        
    }

    public static function getUserData(){
    
        $arr=array();
        
        if(isset($_POST['data'])){
            $data =$_POST['data'];
            $userCheckoutData=json_decode($data,true);
            print_r($userCheckoutData);
            array_push($arr,$userCheckoutData);
        }else{
            //print_r('plan data is not set');
        }
        print_r($arr);
    }
    
}
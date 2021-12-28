<?php

namespace application\controller;
use application\core\Controller;
use application\model\LoginModel;

require_once '..\application\model\LoginModel.php';
require_once '..\application\core\Controller.php';


class LoginController extends Controller{

    

    public function __construct()
    {
       
        parent::__construct();
    }
    
    public function index()
    {
        
        $this->View->renderLogin('login/index');
        
    }

    public static function loginUser(){
      
        $verify='false';

        if(isset($_POST['loginData'])){

            $data =$_POST['loginData'];
            $user_login_Data=json_decode($data,true);
            
            $user= LoginModel::getUser($user_login_Data[0]);

            foreach($user as $key => $value){

                $valid_user=$value["userEmail"];
                $valid_pass=$value["password"];


                if($valid_user==$user_login_Data[0]){
                    
                    if(password_verify($user_login_Data[1],$valid_pass)){
                        $verify='true';
                    }else{  
                        $verify='false';
                    }
                }
                
            }
           
        }
        echo $verify;
    }
    
}
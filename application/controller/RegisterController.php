<?php

namespace application\controller;
use application\core\Controller;
use application\model\RegisterModel;

require_once '..\application\core\Controller.php';
require_once '..\application\model\RegisterModel.php';

class RegisterController extends Controller{

    // all variable declaration
    protected $user_name="";
    protected $user_email="";
    protected $user_plan="";
    protected $user_cardnum="";
    protected $user_cvv="";
    protected $user_pass="";
    protected $card_monthexp="";
    protected $card_yearexp="";

    public function __construct()
    {
       
        parent::__construct();
    }
    
    public function index()
    {
        
        $this->View->renderRegister('register/index');
        
    }

    public static function getUserData(){
        
        // getting the user data
        if(isset($_POST['data'])){
            $data =$_POST['data'];
            
            $userCheckoutData=json_decode($data,true);
            
            // print all the user data in the console
            print_r($userCheckoutData);

            $user_name=$userCheckoutData[3];
            $user_email=$userCheckoutData[1];
            $user_pass=$userCheckoutData[2];
            $user_cardnum=$userCheckoutData[4];
            $user_cvv=$userCheckoutData[5];
            $card_monthexp=$userCheckoutData[6];
            $card_yearexp=$userCheckoutData[7];
            $user_plan=$userCheckoutData[0];
            $hashed_pass=password_hash($user_pass,PASSWORD_DEFAULT);
            // to check if  any duplicate exite with this name 
           
            
            // if their is duplicate then dont register the new user
            RegisterModel::createUser($user_name,$user_email,$user_cardnum,$user_cvv,$hashed_pass,$user_plan,$card_monthexp,$card_yearexp);
           
            
        }

        if(isset($_POST['checkData'])){

            $user_data =$_POST['checkData'];
            
            $checkData=json_decode($user_data,true);

            $check_useremail=$checkData[0];

            //printf('this is send to the page requireed'.$check_useremail);

            $duplicate=RegisterModel::checkUser($check_useremail);


            if($duplicate>0){
                echo 'true';      
            }else{
                echo 'false';
            }

        }
        
    }
    
    
}
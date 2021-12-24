<?php

namespace application\core;
use application\core\Config;
require_once '..\application\core\Config.php'; 

/* function to combine all the user interaction files and show to the user  */

class View{

    // this will show the entry page of the NETFLIX                                                          
    public function renderIndex($filename, $data = null)                   
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/index-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/index-foot.php';
    }

    // this will all the plans to the user NETFLIX 
    public function renderPlan($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'templates/plan-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'templates/plan-foot.php';
    }

}
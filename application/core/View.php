<?php

namespace application\core;
use application\core\Config;
require_once '..\application\core\Config.php'; 

/* function to combine all the user interaction files and show to the user  */

class View{

    // to show the first or entry page of the app                                                          
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

    // to show all the netflix page
    public function renderPlan($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/plan-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/plan-foot.php';
    }

    // to show the registeration page
    public function renderRegister($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/register-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/register-foot.php';
    }

    // to show the checkout page
    public function renderCheckout($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/checkout-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/checkout-foot.php';
    }

    //to show login page
    public function renderLogin($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/login-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/login-foot.php';
    }

    //to show main netfix page
    public function renderMain($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/main-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/main-foot.php';
    }
    public function renderDrama($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/drama-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/drama-foot.php';
    }
    public function renderThrill($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/thrill-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/thrill-foot.php';
    }

    public function renderHorror($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/horror-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/horror-foot.php';
    }
    public function renderTv($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/tv-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/tv-foot.php';
    }
    public function renderRomantic($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/romantic-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/romantic-foot.php';
    }
    public function renderAction($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/action-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/action-foot.php';
    }
    public function renderDoc($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/doc-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/doc-foot.php';
    }
    public function renderComedy($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/comedy-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/comedy-foot.php';
    }
    public function renderDownload($filename, $data = null)                     
    {
        if ($data) {
            foreach ($data as $key => $value) {
                $this->{$key} = $value;
            }
        }

        require Config::get('PATH_VIEW') . 'template/download-head.php';
        require Config::get('PATH_VIEW') . $filename . '.php';
        require Config::get('PATH_VIEW') . 'template/download-foot.php';
    }
}
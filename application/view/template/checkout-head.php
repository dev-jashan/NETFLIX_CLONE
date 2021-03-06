<?php $root_url=\application\core\Config::get('URL');?>

<!doctype html>
<html>
<head>
    <title>Netflix Clone</title>
    <!-- META -->
    <meta charset="utf-8">
    <!-- send empty favicon fallback to prevent user's browser hitting the server for lots of favicon requests resulting in 404s -->
    <link rel="icon" href="data:;base64,=">
    <link href="<?= $root_url?>assets/css/index.css" rel="stylesheet">
    <script src="<?= $root_url?>assets/js/checkout.js"></script>
    <script src="<?= $root_url?>assets/js/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="<?= $root_url?>assets/css/checkout.css" rel="stylesheet">
    <style>
        /* this is the loading of the netflix app*/ 
        .spinner:before {
            content: "";
            box-sizing: border-box;
            position: absolute;
            top: 50%;
            left: 50%;
            width: 80px;
            height: 80px;
            margin-top: -30px;
            margin-left: -30px;
            border-radius: 50%;
            border-top: 5px solid red;
            border-right: 5px solid transparent;
            animation: spinner 1s linear infinite;
        }

        @keyframes spinner {
        to {
            transform: rotate(360deg);
        }
        }

    </style>
</head>
<body style="background-color: white;" class="body">
    <!-- nav  -->
    <div class="loader"></div>
    <div class="netflixFrontContainer">
            <div class="netflixLogo">
                <img src="<?= $root_url?>assets/img/netflxLogo.jpg" alt="" width="100%">
            </div>
            <nav class="netflixNav">
                <div class="signup">
                    <a  href="<?= $root_url?>login/index" class="signupBtn">Sign_in</a>
                </div>
            </nav>   
        </div>
    
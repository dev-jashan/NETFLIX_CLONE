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
    
    <script src="<?= $root_url?>assets/js/jquery.min.js"></script>
    <link href="<?= $root_url?>assets/css/checkout.css" rel="stylesheet">
    <link href="<?= $root_url?>assets/css/register.css" rel="stylesheet">
    <link href="<?= $root_url?>assets/css/login.css" rel="stylesheet">
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
<body style="background-color: black;" class="body">

<div class="netflixFrontContainer" style="background-color: black;">
    <div class="backtoIndexContainer">
        <a  href="<?= $root_url?>index/index" class="backtoIndex" style="color: white;text-decoration: none;" onclick="hide()">🡰</a>
    </div>
    <div class="netflixLogo">
        <img src="<?= $root_url?>assets/img/netBlack.jpg" alt="" width="100%">
    </div>
</div>
<div class="loader"></div>
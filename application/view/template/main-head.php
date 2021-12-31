<?php $root_url=\application\core\Config::get('URL');?>

<!doctype html>
<html>
<head>
    <title>Netflix Clone</title>
    <!-- META -->
    <meta charset="utf-8">
    <!-- send empty favicon fallback to prevent user's browser hitting the server for lots of favicon requests resulting in 404s -->
    <link rel="icon" href="data:;base64,=">
    <link href="<?= $root_url?>assets/css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="<?= $root_url?>assets/js/jquery.min.js"></script>
    <script src="<?= $root_url?>assets/js/main.js"></script>
</head>
<body>

    <nav id="nav">
        <div class="sideNavContainer">
            <span class="openSideBar" style="color: white;">☰</span>
        </div>
        <img src="<?= $root_url?>assets/img/netflix_transparent.png" alt="" width="10%">
    </nav>

    <div class="backdrop"></div>
    <div class="sidebar">
        <div class="side_profile">
            <img src="<?= $root_url?>assets/img/profile.png" width="100%">
            <div>
               
            </div>
        </div>
        <div class="sidebar-list">
            <div class="styleDownload">
                <a href="">Notifications   ></a>
            </div>
            <div class="styleDownload">
                <i class="fa fa-download"></i><a href="">My Downloads</a>
            </div>
           
            <li class="sidebar-item">
                <span class="selectedOption"></span>
                <a href="">Home</a>
            </li>
            <li class="sidebar-item">
                <a href="">Dramas</a>
            </li>
            <li class="sidebar-item">
                <a href="">Thriller Movies</a>
            </li>
            <li class="sidebar-item">
                <a href="">Horror Movies</a>
            </li>
            <li class="sidebar-item">
                <a href="">TV Shows</a>
            </li>
            <li class="sidebar-item">
                <a href="">Romantic Movies</a>
            </li>
            <li class="sidebar-item">
                <a href="">Action & Adventure</a>
            </li>
            <li class="sidebar-item">
                <a href="">Documentaries</a>
            </li>
        </div>
    </div> 
</div>
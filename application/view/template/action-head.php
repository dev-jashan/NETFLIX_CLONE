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
    <link href="<?= $root_url?>assets/css/genre.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="<?= $root_url?>assets/js/jquery.min.js"></script>
    <script src="<?= $root_url?>assets/js/action.js"></script>
</head>
<body style="background-color: black;"> 
    <!-- create nav -->
    <nav id="nav">
        <div class="sideNavContainer">
            <span class="openSideBar" style="color: white;">☰</span>
        </div>
        <p class="genre">Action</p>
        <div class="searchContainer">
            <a href="<?= $root_url?>search/index"><i class="fa fa-search search"></i></a>
        </div>
        <div class="settingContainer">
            <a href="<?= $root_url?>logout/index" style="display: none;"><span class="logout">Logout</span></a>
        </div>
    </nav>
    <!-- create sidebar -->
    <div class="backdrop"></div>
    <div class="sidebar">
        <div class="side_profile">
            <img src="<?= $root_url?>assets/img/profile.png" width="100%">
        </div>
        <div class="sidebar-list">
            <div class="styleDownload">
                <a href="">Notifications   ></a>
            </div>
            <div class="styleDownload">
                <i class="fa fa-download"></i><a href="<?= $root_url?>download/index">My Downloads</a>
            </div>
           
            <li class="sidebar-item">
                <span class="selectedOption"></span>
                <a href="<?= $root_url?>main/index">Home</a>
            </li>
            <li class="sidebar-item">
                <a href="<?= $root_url?>drama/index">Dramas</a>
            </li>
            <li class="sidebar-item">
                <a href="<?= $root_url?>thrill/index">Thriller Movies</a>
            </li>
            <li class="sidebar-item">
                <a href="<?= $root_url?>horror/index">Horror Movies</a>
            </li>
            <li class="sidebar-item">
                <a href="<?= $root_url?>tv/index">TV Shows</a>
            </li>
            <li class="sidebar-item">
                <a href="<?= $root_url?>romantic/index">Romantic Movies</a>
            </li>
            <li class="sidebar-item">
                <a href="<?= $root_url?>action/index">Action & Adventure</a>
            </li>
            <li class="sidebar-item">
                <a href="<?= $root_url?>doc/index">Documentaries</a>
            </li>
            <li class="sidebar-item">
                <a href="<?= $root_url?>comedy/index">Documentaries</a>
            </li>
        </div>
    </div> 
</div>
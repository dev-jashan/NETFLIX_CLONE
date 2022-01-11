<?php $root_url=\application\core\Config::get('URL');?>

<!doctype html>
<html>
<head>
    <title>Netflix Clone</title>
    <!-- META -->
    <meta charset="utf-8">
    <!-- send empty favicon fallback to prevent user's browser hitting the server for lots of favicon requests resulting in 404s -->
    <link rel="icon" href="data:;base64,=">
    
    <link href="<?= $root_url?>assets/css/search.css" rel="stylesheet">
    <link href="<?= $root_url?>assets/css/main.css" rel="stylesheet">
    <link href="<?= $root_url?>assets/css/genre.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="<?= $root_url?>assets/js/jquery.min.js"></script>
    <script src="<?= $root_url?>assets/js/search.js"></script>
</head>

<body style="background-color: black;"> 

    <!-- create nav -->
    <nav>
        <div class="mainContainer">
            <a href="<?= $root_url?>main/index" style="color: white;"><i class="fa fa-arrow-left back"></i></a>
        </div>
        <div class="inputContainer">
            <label><i class="fa fa-search search" style="color: white;"></i></label>
            <input type="text" name="search" id="search-input" class="search-input" placeholder="Search"/>
        </div>
    </nav>

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
    <script src="<?= $root_url?>assets/js/index.js"></script>
    <script src="<?= $root_url?>assets/js/jquery.min.js"></script>
    
</head>
<body>
    
    <div class="netflixFrontContainer">
        <div class="netflixLogo">
            <img src="<?= $root_url?>assets/img/netflxLogo.jpg" alt="" width="100%">
        </div>
        <nav class="netflixNav">
            <div class="signup">
                <a href="<?= $root_url?>login/index" class="signupBtn">Sign.in</a>
            </div>
        </nav>   
    </div>
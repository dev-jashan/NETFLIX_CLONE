<!--  creating  play container-->
<div class="playMovieContainer">
    <p id="movieId" class="movieId" style="display: none;"></p>
    <div class="playMovie"></div>
    <div class="descriptionContainer">
        <ul class="ratingContainer">
            <li style="color: green;">94% match</li>
            <li style="color: white;">2022</li>
            <li style="color: white;">2hr 2min</li>
            <li class="rating" style="color: white;">5.1</li>
        </ul>
        <div class="overviewContainer"><p class="movieOverview"></p></div>
    </div>
    <div class="movieCardsContainer">
        <div class="movieCards"></div>
    </div>
</div>


<div class="noDownloadContainer" style="display: none;">
    <img src="<?= $root_url?>assets/img/netflix_donwload.PNG" alt="">
    <div class="backToHome">
        <a href="<?= $root_url?>main/index">FIND SOMETHING TO DOWNLOAD</a>
    </div>
</div>
<div class="coverSelectedMovie" id="coverSelectedMovie"></div>
<div class="accessable"></div>

<!-- create poster -->
<div class="movies-Container">
    <div class="drama-movies"></div>
</div>

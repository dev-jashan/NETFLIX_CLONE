

(function(){

    // get all the movies
    function moviesDb(){

        $.ajax({
            
            type: "GET",
            url: 'http://127.0.0.1:8080/php/NETFLIX_CLONE/main/allNetfix',
            
            success: function(data){
                let movies=JSON.parse(data);
                let allMovies=movies[0];
                
                // send data to their respective funcitions
                getAllMovies(allMovies);
                
            },
            error: function(xhr, status, error){
                console.error(xhr);
            }
        });
    }


    function getAllMovies(allMovies){

        console.log(allMovies);

        let maxMovieNum=allMovies.length;
        let randomIndex=Math.floor(Math.random() * maxMovieNum);
        console.log(randomIndex);
        console.log(allMovies[randomIndex]);

    }


    function init(){
        moviesDb();
    }
    




    document.addEventListener("DOMContentLoaded", function (){
        console.log('this is the main page of the application');
        init();
    });


})();
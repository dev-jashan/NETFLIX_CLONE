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

        // to choose a random movie 
       // let maxMovieNum=allMovies.length;
        let randomIndex=Math.floor(Math.random() * 1);
        let randomMovie=allMovies[randomIndex];

        // movie image , overview and title
        let imgUrl=randomMovie['backdrop_path'];
        let overview=randomMovie['overview'];
        let movieName=randomMovie['name'];
        let url=`https://image.tmdb.org/t/p/original${imgUrl}`;
        let shortOverview=truncate(overview,150);
        console.log(shortOverview);
    
       // grabbling the html elements
        let imgContainer=document.getElementById("frontImgContainer");
        imgContainer.style.backgroundImage=`url(${url})`;
        let overviewContainer=document.getElementById("overview");
        let title=document.getElementById("title");

        // setting inner html of the html elements
        overviewContainer.innerHTML=shortOverview;        
        title.innerHTML=movieName;
    }

    // if the overview is bigger then replace words with ...
    function truncate(str,n){
      return str?.length > n ? str.substr(0,n-1) + '...' :str;
    }

    // create a sticky nav bar
    function navBarLogic(){

        let navbar = document.getElementById("nav");

        // Get the offset position of the navbar
        let sticky = navbar.offsetTop;
        if (window.pageYOffset >= sticky) {
            navbar.classList.add("sticky")
          } else {
            navbar.classList.remove("sticky");
          }
    }

    // create a side bar
    function sidebarLogic(){
        const sidenavContainer=document.querySelector('.sideNavContainer');
        const backdrop=document.querySelector('.backdrop');
        const sidebar=document.querySelector('.sidebar');

        sidenavContainer.addEventListener('click',()=>{

            backdrop.classList.toggle('backdrop-active');
            sidebar.classList.toggle('sidebar-active');
        })
        backdrop.addEventListener('click',()=>{

            backdrop.classList.toggle('backdrop-active');
            sidebar.classList.toggle('sidebar-active');
        })
    }

    function init(){    
        window.onscroll = function() {navBarLogic()};
        moviesDb();
    }

    document.addEventListener("DOMContentLoaded", function (){
        console.log('this is the main page of the application');
        init();
        sidebarLogic()
        
    });


})();
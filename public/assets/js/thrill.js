(function(){


    function moviesDb(){

        $.ajax({
            
            type: "GET",
            url: 'http://127.0.0.1:8080/php/NETFLIX_CLONE/main/allNetfix',
            
            success: function(data){
                let movies=JSON.parse(data);
                let allMovies=movies[0];                
               
                let actionArr=movies[2].concat(movies[3],movies[13]);
                console.log(allMovies);

                getNetflixThrill(actionArr);
                setActionEvent(actionArr);
               
            },
            error: function(xhr, status, error){
                console.error(xhr);
            }
        });
    }


    // get selected movie
    function filterMovies(allMovies,movieId){
        let findMovie=allMovies.filter(element=>element['ID']==movieId);  
        return findMovie;
    }

    // movie not selected
    function leftMovies(allMovies,movieId){
        let findMovie=allMovies.filter(element=>element['ID']!=movieId);  
        return findMovie;
    }

    function disable() {
        // To get the scroll position of current webpage
        TopScroll = window.pageYOffset || document.documentElement.scrollTop;
        LeftScroll = window.pageXOffset || document.documentElement.scrollLeft,
        
        // if scroll happens, set it to the previous value
        window.onscroll = function() {
        window.scrollTo(LeftScroll, TopScroll);
        };
    }

    // add youtbe video 
    function embeedVideo(id){
        const  originalContainer=document.querySelector('.playMovie');
        originalContainer.innerHTML="";
        const content = `   
                <iframe class='player' src="https://www.youtube.com/embed/${id}" 
                    title="YouTube video player" frameborder="0"
                    allow="encrypted-media;picture-in-picture" 
                    allowfullscreen>
                </iframe>
                `;
                
            originalContainer.innerHTML += content;
    }

    // set event lister to  the first netflix drama movie selected
    function setActionEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".dramaRows").forEach(function(item){
            item.addEventListener("click", function(e){

                
                let movieId=e.target.alt;
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(movieId);
                close.style.display='block';
                
            })
        })
    }


    function getNetflixThrill(thrill){
        const  originalContainer=document.querySelector('.movies-Container');
        thrill.forEach((result) => {
            const content = `   
                    <div class="dramaRows"   id="dramaRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
    }

    // show the movies that are not selected
    function createLeftMovies(cards){
        const  originalContainer=document.querySelector('.movieCards');
        originalContainer.innerHTML="";
        cards.forEach((result) => {
            const content = `   
                    <div class="rows"   id="rows"  style="position: relative;">
                        <img id="img" class="img"  style="position: relative;" src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
            
        }) 
    }

    function addToList(){
        let listBtn=document.querySelector('.listBtn');
        let getMovieId=document.querySelector('.movieId');

        listBtn.addEventListener("click", function(){
            console.log(getMovieId.alt);
            console.log('list button is clicked');
            let userData = JSON.stringify(getMovieId.innerHTML);
            console.log(userData);
            $.ajax({
            
                type: "POST",
                url: 'http://127.0.0.1:8080/php/NETFLIX_CLONE/list/yourList',
                data: {data : userData},
                success: function(data){
                    console.log(data);
                
                },
                error: function(xhr, status, error){
                    console.error(xhr);
                }
            });
        })

    }

    // to select a movie that is not selected before 
    function selectLeftMovies(allMovies){
        let titleContainer=document.querySelector('.movieOverview');
        document.querySelectorAll(".rows").forEach(function(item){
            item.addEventListener("click", function(e){
                //displayMovie.style.display='block';
                let movieId=e.target.alt;
                console.log(movieId)
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let shortOverview=truncate(longOverview,150);
                titleContainer.innerHTML=shortOverview;   
                embeedVideo(trailer);
                setMovieId(movieId);
            })
        })
    }

    // close a movie
    function closeMovie(){
        let close=document.querySelector('.coverSelectedMovie');
        let closeMovie=document.querySelector('.playMovieContainer');
        const  originalContainer=document.querySelector('.playMovie');
        close.addEventListener('click',()=>{
            close.style.display='none';
            closeMovie.style.display='none';
            window.onscroll = function() {
                window.scrollTo(document.documentElement.scrollLeft, document.documentElement.scrollTop);
            };
            originalContainer.innerHTML="";
            
        })
        
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
        if (window.scrollY >= sticky) {
            navbar.classList.add("sticky")
        } else {
            navbar.classList.remove("sticky");
        }    
    }

    // add movie to download
    function addToDownload(){
        let downloadBtn=document.querySelector('.downloadBtn');
        let getMovieId=document.querySelector('.movieId');

        downloadBtn.addEventListener("click", function(){
            console.log(getMovieId.innerHTML);
            console.log('download button is clicked');
            let userData = JSON.stringify(getMovieId.innerHTML);
            console.log(userData);
            $.ajax({
            
                type: "POST",
                url: 'http://127.0.0.1:8080/php/NETFLIX_CLONE/download/yourDownload',
                data: {data : userData},
                success: function(data){
                    console.log(data);
                
                },
                error: function(xhr, status, error){
                    console.error(xhr);
                }
            });
        })
    }

    //enable and disable sidebar 
    function sidebarLogic(){
        const sidenavContainer=document.querySelector('.sideNavContainer');
        let closeSideBar=document.querySelector('.accessable');
        const backdrop=document.querySelector('.backdrop');
        const sidebar=document.querySelector('.sidebar');

        sidenavContainer.addEventListener('click',()=>{
            closeSideBar.style.display='block';  
            backdrop.classList.toggle('backdrop-active');
            sidebar.classList.toggle('sidebar-active');
            disable();
              
        })
        closeSideBar.addEventListener('click',()=>{

            backdrop.classList.remove('backdrop-active');
            sidebar.classList.remove('sidebar-active');
            closeSideBar.style.display='none';
            window.onscroll = function() {
                window.scrollTo(document.documentElement.scrollLeft, document.documentElement.scrollTop);
            };
            
        })
    }
    
    function setMovieId(id){
        let setId=document.getElementById('movieId');
        setId.innerHTML=id;
    }
    function init(){    
        window.onscroll = function() {navBarLogic()};
        moviesDb();
        closeMovie();
    }

    document.addEventListener("DOMContentLoaded", function (){
        console.log('this is the main page of the application');
        init();
        sidebarLogic();
        addToList();
        addToDownload();
    });

})();
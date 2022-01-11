

    

$(function(){


    function moviesDb(){

        $.ajax({
            
            type: "GET",
            url: 'http://127.0.0.1:8080/php/NETFLIX_CLONE/main/allNetfix',
            
            success: function(data){
                let movies=JSON.parse(data);
                let allMovies=movies[0];      
                //console.log(allMovies);          
                get(allMovies);
            },
            error: function(xhr, status, error){
                console.error(xhr);
            }
        });
    }    

        // this will be called when the DOM is ready
    function get(allMovies){
        $('.search-input').on('keyup',function(){
            let val=$(this).val();
            //console.log(val);
            let filteredMovies=[];
            let movieData=check(filteredMovies,val,allMovies);
        
            if(movieData.length>0){
                console.log(movieData);
                getNetflix(movieData);
                setEvent(movieData);            
            }
        });
    }
       
    function check(filteredMovies,value,data){

        for (var i = 0; i < data.length; i++){

            value=value.toLowerCase();
            let movieName=data[i]['name'].toLowerCase();

            if(movieName.includes(value)){
                filteredMovies.push(data[i]);
            }
        }

        return filteredMovies;
    }


    function getNetflix(data){
        const  originalContainer=document.querySelector('.movies-Container');
        originalContainer.innerHTML = "";
        data.forEach((result) => {
            const content = `   
                    <div class="dramaRows"   id="dramaRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
    }

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

    function disable() {

        // To get the scroll position of current webpage
        TopScroll = window.pageYOffset || document.documentElement.scrollTop;
        LeftScroll = window.pageXOffset || document.documentElement.scrollLeft,
        
        // if scroll happens, set it to the previous value
        window.onscroll = function() {
            window.scrollTo(LeftScroll, TopScroll);
        };
    }

    function leftMovies(allMovies,movieId){
        let findMovie=allMovies.filter(element=>element['ID']!=movieId);  
        return findMovie;
    }

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

    function selectLeftMovies(allMovies){
        let titleContainer=document.querySelector('.movieOverview');
        document.querySelectorAll(".rows").forEach(function(item){
            item.addEventListener("click", function(e){
                //displayMovie.style.display='block';
                console.log(e.target);
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

    function filterMovies(allMovies,movieId){
        let findMovie=allMovies.filter(element=>element['ID']==movieId);  
        return findMovie;
    }
        
    function truncate(str,n){
        return str?.length > n ? str.substr(0,n-1) + '...' :str;
    }

    function setMovieId(id){
        let setId=document.getElementById('movieId');
        setId.innerHTML=id;
    }

    function setEvent(allMovies){

        // select all the containers required
        console.log('the set the event');
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
                let showLeftMovies=leftMovies(movieData,movieId);
    
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

    function addToList(){
        let listBtn=document.querySelector('.listBtn');
        let getMovieId=document.querySelector('.movieId');

        listBtn.addEventListener("click", function(){
        
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

    function init(){    
        moviesDb();
        closeMovie();
        addToDownload();
        addToList();
    }
    
      
           
    init();
           
       
    

});    

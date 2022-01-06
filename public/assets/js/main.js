(function(){

    // get all the movies
    function moviesDb(){

        $.ajax({
            
            type: "GET",
            url: 'http://127.0.0.1:8080/php/NETFLIX_CLONE/main/allNetfix',
            
            success: function(data){
                let movies=JSON.parse(data);
                console.log(movies);
                let allMovies=movies[0];
                let originals=movies[7];
                let actionArr=movies[2].concat(movies[3],movies[13]);
                let adventure=movies[1].concat(movies[2],movies[13]);
                let comedy=movies[4].concat(movies[14]);
                let horror=movies[6];
                let romance=movies[5];
                let scifi=movies[8].concat(movies[11]);
                let crime=movies[13].concat(movies[15]);
                let drama=movies[9].concat(movies[10]);
                let doc=movies[17];
                let listArr=[];
                // send data to their respective funcitions
                playFrontMovie(allMovies);
                getAllMovies(allMovies);
                getNetflixOriginals(originals);
                getNetflixAction(actionArr);
                getNetflixAd(adventure);
                getNetflixComedy(comedy);
                getNetflixHorror(horror);
                getNetflixRomance(romance);
                getNetflixScifi(scifi);
                getNetflixCrime(crime);
                getNetflixDrama(drama);
                getNetflixDocumentaries(doc);

               // listArr.push(filterMovies(allMovies,movies[18]['movie_ID']));
                //console.log('this is the list'+listArr);
                // if(movies[19]>0){
                //     getNetflixList(movies[18]);    
                // }
                movies[18].forEach((result) => {
                    let movieId=filterMovies(allMovies,result['movie_ID']);
                    listArr.push(movieId);
                    console.log(listArr);
                })
                if(movies[19]>0){
                    document.querySelector('.hideList').style.display='block';
                    getNetflixList(listArr); 
                    setListEvent(allMovies);   
                }else{
                    document.querySelector('.hideList').style.display='none';
                }
                
                // send all movies to the set event function 
                setOriginalEvent(originals);
                setHorrorEvent(horror);
                setActionEvent(actionArr)
                setAdventureEvent(adventure);
                setComedyEvent(comedy);
                setScifiEvent(scifi);
                setCrimeEvent(crime);
                setDramaEvent(drama);
                setRomanceEvent(romance);
                setDocEvent(doc);
                
           
            },
            error: function(xhr, status, error){
                console.error(xhr);
                
            }
        });
    }


    function playFrontMovie(allMovies){

        //get element by id 
        let playBtn=document.querySelector('.playBtn');
        let getId=document.getElementById('movieId');
        let frontvideoContainer=document.getElementById('frontImgContainer');
        let frontImgContent=document.getElementById('frontImgContent');
        let bottomContainer=document.getElementById('bottom-gradient');

        // set event listner to the play button to play video
        playBtn.addEventListener("click", function(){
            frontImgContent.style.display='none';
            bottomContainer.style.display='none';
            frontvideoContainer.style.backgroundImage='none';
            console.log(getId.innerHTML);
            let getMovie=filterMovies(allMovies,getId.innerHTML)
            console.log(getMovie);
            let getmovieTrailer=getMovie[0]['trailers'];
            console.log(getmovieTrailer);
            const content = `   
            <iframe class='frontVideo' src="https://www.youtube-nocookie.com/embed/${getmovieTrailer}?autoplay=1&mute=1&&modestbranding=1&autohide=1&showinfo=0" 
                title="YouTube video player" frameborder="0"
                allow="encrypted-media;picture-in-picture";"autoplay" 
                allowfullscreen>
                
            </iframe>
            `;
            
            frontvideoContainer.innerHTML += content;

        })

    }

    function addToList(){
        let listBtn=document.querySelector('.listBtn');
        let getMovieId=document.querySelector('.movieId');

        listBtn.addEventListener("click", function(){
            console.log(getMovieId.innerHTML);
            console.log('list button is clicked');
            let userData = JSON.stringify(getMovieId.innerHTML);
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

    //creating drama
    function getNetflixDrama(drama){
        const  originalContainer=document.querySelector('.dramaSlider');
        drama.forEach((result) => {
            const content = `   
                    <div class="dramaRows"   id="dramaRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.dramaSlider','.nextdrama','.prevdrama');
    }

    //creating documentaries
    function getNetflixDocumentaries(doc){
        const  originalContainer=document.querySelector('.docSlider');
        doc.forEach((result) => {
            const content = `   
                    <div class="docRows"   id="docRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.docSlider','.nextdoc','.prevdoc');
    }

    //creating crime and mystery
    function getNetflixCrime(crime){
        const  originalContainer=document.querySelector('.crimeSlider');
        crime.forEach((result) => {
            const content = `   
                    <div class="crimeRows"   id="crimeRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.crimeSlider','.nextcrime','.prevcrime');
    }

    //creating scifi rows
    function getNetflixScifi(scifi){
        const  originalContainer=document.querySelector('.scifiSlider');
        scifi.forEach((result) => {
            const content = `   
                    <div class="scifiRows"   id="scifiRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.scifiSlider','.nextscifi','.prevscifi');
    }

    //creating romantic rows
    function getNetflixRomance(romance){
        const  originalContainer=document.querySelector('.romSlider');
        romance.forEach((result) => {
            const content = `   
                    <div class="romRows"   id="romRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.romSlider','.nextRom','.prevRom');
    }
    //creating horror row
    function getNetflixHorror(horror){
        const  originalContainer=document.querySelector('.horrSlider');
        horror.forEach((result) => {
            const content = `   
                    <div class="horrRows"   id="horrRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.horrSlider','.nextHorr','.prevHorr');
    }

    //creating the comedy row
    function getNetflixComedy(comedy){
        const  originalContainer=document.querySelector('.comSlider');

        comedy.forEach((result) => {
            const content = `   
                    <div class="comRows"   id="comRows">
                        <img id='${result['name']}'  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.comSlider','.nextCom','.prevCom');
    }
    
    
    // creating the action and thriller row
    function getNetflixAd(ad){
        console.log(ad)
        const  originalContainer=document.querySelector('.adSlider');

        ad.forEach((result) => {
            const content = `   
                    <div class="adRows"   id="adRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.adSlider','.nextAd','.prevAd');
    }

    // creating the action and thriller row
    function getNetflixAction(action){
        console.log(action)
        const  originalContainer=document.querySelector('.actionSlider');

        action.forEach((result) => {
            const content = `   
                    <div class="actionRows"   id="actionRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.actionSlider','.nextAction','.prevAction');
    }
     
    // creating the original netflix row
    function getNetflixOriginals(original){
        console.log(original)
        const  originalContainer=document.querySelector('.slider');

        original.forEach((result) => {
            const content = `   
                    <div class="originalRows"   id="originalRows"  style="position: relative;">
                        <img id="img" class="img"  style="position: relative;" src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result['ID']}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
            
        }) 
        getSlicky('.slider','.next','.prev');
        
    }
    //creating the list netflix row
    function getNetflixList(list){
       // console.log(list)
       const  originalContainer=document.querySelector('.listSlider');
        list.forEach((result) =>{
            console.log(result);
            result.forEach((id) =>{
                const content = `   
                     <div class="listRows"   id="listRows"  style="position: relative;">
                         <img id="img" class="img"  style="position: relative;" src="https://image.tmdb.org/t/p/original${id['poster']}" width="200px" height="200px" alt="${id['ID']}">
                     </div>
                 `;
                
                originalContainer.innerHTML += content;
            
            })
        })
        getSlicky('.listSlider','.nextList','.prevList');    
    }
    
    // set event lister to  the first netflix drama movie selected
    function setDocEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".docRows").forEach(function(item){
            item.addEventListener("click", function(e){

                
                let movieId=e.target.alt;
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);
                close.style.display='block';
                
            })
        })
    }
    // set event lister to  the first netflix drama movie selected
    function setDramaEvent(allMovies){

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
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);
                close.style.display='block';
                
            })
        })
    }

    // set event listner to the list row
    function setListEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".listRows").forEach(function(item){
            item.addEventListener("click", function(e){
                
                
                let movieId=e.target.alt;
                console.log(movieId);
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);
                close.style.display='block';
                
            })
        })
    }

    // set event lister to  the first netflix romance movie selected
    function setRomanceEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".romRows").forEach(function(item){
            item.addEventListener("click", function(e){

                
                let movieId=e.target.alt;
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);
                close.style.display='block';
                
            })
        })
    }

    // set event lister to  the first netflix sci fi movie selected
    function setCrimeEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".crimeRows").forEach(function(item){
            item.addEventListener("click", function(e){

                
                let movieId=e.target.alt;
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);
                close.style.display='block';
                
            })
        })
    }
    // set event lister to  the first netflix sci fi movie selected
    function setScifiEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".scifiRows").forEach(function(item){
            item.addEventListener("click", function(e){

                
                let movieId=e.target.alt;
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);
                close.style.display='block';
                
            })
        })
    }

    // set event lister to  the first netflix comedy movie selected
    function setComedyEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".comRows").forEach(function(item){
            item.addEventListener("click", function(e){

                
                let movieId=e.target.alt;
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);
                close.style.display='block';
                
            })
        })
    }
        
    // set event lister to  the first netflix adventure movie selected
    function setAdventureEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".adRows").forEach(function(item){
            item.addEventListener("click", function(e){

                
                let movieId=e.target.alt;
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);
                close.style.display='block';
                
            })
        })
    }

    // set event lister to  the first netflix horror movie selected
    function setHorrorEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".horrRows").forEach(function(item){
            item.addEventListener("click", function(e){

                  
                let movieId=e.target.alt;
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);;
                close.style.display='block';
                
            })
        })
    }

    // set event lister to  the first netflix original movie selected
    function setOriginalEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".originalRows").forEach(function(item){
            item.addEventListener("click", function(e){

                  
                let movieId=e.target.alt;
                let movieData=filterMovies(allMovies,movieId);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);
                close.style.display='block';
                
            })
        })
    }

    // creating action and thriller
    function setActionEvent(allMovies){

        // select all the containers required
        const displayMovie=document.querySelector('.playMovieContainer');
        let titleContainer=document.querySelector('.movieOverview');
        let close=document.querySelector('.coverSelectedMovie');
        document.querySelectorAll(".actionRows").forEach(function(item){
            item.addEventListener("click", function(e){

                  
                let movieId=e.target.alt;
                let movieData=filterMovies(allMovies,movieId);
                console.log(movieData);
                let longOverview=movieData[0]['overview'];
                let trailer=movieData[0]['trailers'];
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                let showLeftMovies=leftMovies(allMovies,movieId);

                displayMovie.style.display='block';
                titleContainer.innerHTML=shortOverview;   
                
                // funcition declaration
                embeedVideo(trailer);
                createLeftMovies(showLeftMovies);
                disable();
                selectLeftMovies(showLeftMovies);
                setMovieId(setId);
                close.style.display='block';
                
            })
        })
    }
    // add youtbe video 
    function embeedVideo(id){
        const  originalContainer=document.querySelector('.playMovie');
        originalContainer.innerHTML="";
        const content = `   
                <iframe class='player' src="https://www.youtube-nocookie.com/embed/${id}" 
                    title="YouTube video player" frameborder="0"
                    allow="encrypted-media;picture-in-picture" 
                    allowfullscreen>
                </iframe>
                `;
                
            originalContainer.innerHTML += content;
    }

    // disabel scroll when selected a movie
    function disable() {
        // To get the scroll position of current webpage
        TopScroll = window.pageYOffset || document.documentElement.scrollTop;
        LeftScroll = window.pageXOffset || document.documentElement.scrollLeft,
        
        // if scroll happens, set it to the previous value
        window.onscroll = function() {
        window.scrollTo(LeftScroll, TopScroll);
        };
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
                let setId=movieData[0]['ID'];
                let shortOverview=truncate(longOverview,150);
                titleContainer.innerHTML=shortOverview;   
                embeedVideo(trailer);
                setMovieId(setId);
            })
        })
    }

    // get all movies to pick a random one for the front screen
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
        let getMovieId=randomMovie['ID'];
        let url=`https://image.tmdb.org/t/p/original${imgUrl}`;
        let shortOverview=truncate(overview,150);
        console.log(shortOverview);
    
       // grabbling the html elements
        let imgContainer=document.getElementById("frontImgContainer");
        imgContainer.style.backgroundImage=`url(${url})`;
        let overviewContainer=document.getElementById("overview");
        let title=document.getElementById("title");
        let setMovieId=document.getElementById("movieId");

        // setting inner html of the html elements
        setMovieId.innerHTML=getMovieId;
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
        if (window.scrollY >= sticky) {
            navbar.classList.add("sticky")
        } else {
            navbar.classList.remove("sticky");
        }
        
        // on scrool down
        window.addEventListener('scroll',()=>{
            if(window.scrollY >50){
                navbar.style.backgroundColor='black';
            }else{
                navbar.style.backgroundColor='rgb(37, 32, 32,0.1)';
            }
        })
    }

    // enable and disable sidebar 
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
    function setMovieId(id){
        let setId=document.getElementById('movieId');
        setId.innerHTML=id;
    }
    // make a carasoul 
    function getSlicky(className,nextBtn,prevBtn){
        $(document).ready(function() {
            $(className).slick({
                dots: false,
                infinite: false,
                speed: 300,
                slidesToShow: 6,
                slidesToScroll: 6,
                adaptiveHeight: false,
                nextArrow:$(nextBtn),
                prevArrow:$(prevBtn),
                responsive: [
                  {
                    breakpoint: 1275,
                    settings: {
                      slidesToShow: 5,
                      slidesToScroll: 5,
                      infinite: false,
                      dots: false
                    }
                  },
                  {
                    breakpoint: 1035,
                    settings: {
                      slidesToShow: 4,
                      slidesToScroll: 4
                    }
                  },
                  {
                    breakpoint: 850,
                    settings: {
                      slidesToShow: 3,
                      slidesToScroll: 3
                    }
                  },
                  {
                    breakpoint: 640,
                    settings: {
                      slidesToShow: 2,
                      slidesToScroll: 2
                    }
                  }
                  // You can unslick at a given breakpoint now by adding:
                  // settings: "unslick"
                  // instead of a settings object
                ]
              });
        });  
    }

    
    function init(){    
        window.onscroll = function() {navBarLogic()};
        moviesDb();
        closeMovie();
      
        
    }

    document.addEventListener("DOMContentLoaded", function (){
        console.log('this is the main page of the application');
        init();
        sidebarLogic()
        addToList();

        
    });


})();
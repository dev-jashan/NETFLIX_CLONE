(function(){

    // get all the movies
    function moviesDb(){

        $.ajax({
            
            type: "GET",
            url: 'http://127.0.0.1:8080/php/NETFLIX_CLONE/main/allNetfix',
            
            success: function(data){
                let movies=JSON.parse(data);
                let allMovies=movies[0];
                let originals=movies[7];
                let actionArr=movies[2].concat(movies[3],movies[13]);
                let adventure=movies[1].concat(movies[2],movies[13]);
                let comedy=movies[4].concat(movies[14]);
                let horror=movies[6];
                let romance=movies[5];
                let scifi=movies[8].concat(movies[11]);
                // send data to their respective funcitions
                getAllMovies(allMovies);
                getNetflixOriginals(originals);
                getNetflixAction(actionArr);
                getNetflixAd(adventure);
                getNetflixComedy(comedy);
                getNetflixHorror(horror);
                getNetflixRomance(romance);
                getNetflixScifi(scifi);
                
            },
            error: function(xhr, status, error){
                console.error(xhr);
            }
        });
    }


    //creating scifi rows
    function getNetflixScifi(scifi){
        console.log(scifi);
        const  originalContainer=document.querySelector('.scifiSlider');
        scifi.forEach((result) => {
            const content = `   
                    <div class="scifiRows"   id="scifiRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result.title}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.scifiSlider','.nextscifi','.prevscifi');
    }

    //creating romantic rows
    function getNetflixRomance(romance){
        console.log(romance);
        const  originalContainer=document.querySelector('.romSlider');
        romance.forEach((result) => {
            const content = `   
                    <div class="romRows"   id="romRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result.title}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.romSlider','.nextRom','.prevRom');
    }
    //creating horror row
    function getNetflixHorror(horror){
        console.log(horror);
        const  originalContainer=document.querySelector('.horrSlider');
        horror.forEach((result) => {
            const content = `   
                    <div class="horrRows"   id="horrRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result.title}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.horrSlider','.nextHorr','.prevHorr');
    }

    //creating the comedy row
    function getNetflixComedy(comedy){
        console.log(comedy)
        const  originalContainer=document.querySelector('.comSlider');

        comedy.forEach((result) => {
            const content = `   
                    <div class="comRows"   id="comRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result.title}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
        })
        
        getSlicky('.comSlider','.nextCom','.prevCom');
    }
    
    // set event lister to originals
    function setOriginalEvent(){

          Array.from(document.querySelectorAll(".originalRows")).forEach(form_input =>{
            form_input.addEventListener('click', function(){
                console.log('image was clicked');    
            });
            
        });
    }
    // creating the action and thriller row
    function getNetflixAd(ad){
        console.log(ad)
        const  originalContainer=document.querySelector('.adSlider');

        ad.forEach((result) => {
            const content = `   
                    <div class="adRows"   id="adRows">
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result.title}">
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
                        <img id="img"  src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result.title}">
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
                        <img id="img"  style="position: relative;" src="https://image.tmdb.org/t/p/original${result['poster']}" width="200px" height="200px" alt="${result.title}">
                    </div>
                `;
                
            originalContainer.innerHTML += content;
            
        }) 
        getSlicky('.slider','.next','.prev');
        setOriginalEvent();
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

    // create a side bar
    function sidebarLogic(){
        const sidenavContainer=document.querySelector('.sideNavContainer');
        let closeSideBar=document.querySelector('.accessable');
        const backdrop=document.querySelector('.backdrop');
        const sidebar=document.querySelector('.sidebar');


        sidenavContainer.addEventListener('click',()=>{
            closeSideBar.style.display='block';  
            backdrop.classList.toggle('backdrop-active');
            sidebar.classList.toggle('sidebar-active');
              
        })
        closeSideBar.addEventListener('click',()=>{

            backdrop.classList.remove('backdrop-active');
            sidebar.classList.remove('sidebar-active');
            closeSideBar.style.display='none';
            
        })
    }
    
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
        
    }

    document.addEventListener("DOMContentLoaded", function (){
        console.log('this is the main page of the application');
        init();
        sidebarLogic()
        
    });


})();
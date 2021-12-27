
(function(){

    // to add event to the click button
    function setEventListeners(){
        
        // make a click event
        let btn = document.getElementById('nextbtn');
        btn.addEventListener("click", function() {

            // get the value of the radio button
            let radio=document.querySelectorAll('input[name="choice"]');;
            console.log(radio);
            let planArr=[];
            for (const rb of radio) {
                if (!rb.checked) {
                    console.log('false');
                }else if(rb.checked){
                    planArr.push(rb.value);
                    localStorage.setItem('plan', planArr); 

                    window.history.forward();

                    $(function(){
                        $("body").fadeOut(1000,function(){
                            window.location.replace('http://127.0.0.1:8080/php/NETFLIX_CLONE/register/index');
                        })
                    });                            
                }
            }
        });
    }

    function init(){    
        setEventListeners();
        $(function(){
            $("body").hide();
            $("body").fadeIn(1000);
        })
    }
    document.addEventListener("DOMContentLoaded", function (){
        init();
    });


})();
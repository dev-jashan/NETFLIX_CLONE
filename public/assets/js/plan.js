
(function(){

    // to add event to the click button
    function setEventListeners(){
        
        // make a click event
        let btn = document.getElementById('nextbtn');
        btn.addEventListener("click", function() {

            // get the value of the radio button
            let radio=document.querySelectorAll('input[name="choice"]');;
            console.log(radio);
            for (const rb of radio) {
                if (!rb.checked) {
                    console.log('false');
                }else if(rb.checked){
                    console.log('true btn');
                    console.log(rb.value);
                    window.history.forward();
                    window.location.replace('http://127.0.0.1:8080/php/NETFLIX_CLONE/checkout/index');
                }
            }
        });
    }
    function init(){
        
        setEventListeners();
    }
    




    document.addEventListener("DOMContentLoaded", function (){
        init();
    });


})();
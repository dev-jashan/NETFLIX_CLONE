
(function(){

    // to validate the form, send data to ajax, redirect page to main and show the loading aniamtion
    function formValidation(){

        // all variable declaration 
        let userDataArr=[];
        let emptyName=document.getElementById('name');
        let emptyccnum=document.getElementById('ccnum');
        let emptycvv=document.getElementById('cvv');
        let monthVal=$( "#months" ).val();
        let yearVal=$( "#years" ).val();

        // all regrex and boolean declaration
        let visaRegEx = /^(?:4[0-9]{12}(?:[0-9]{3})?)$/;
        let mastercardRegEx = /^(?:5[1-5][0-9]{14})$/;
        let amexpRegEx = /^(?:3[47][0-9]{13})$/;
        let discovRegEx = /^(?:6(?:011|5[0-9][0-9])[0-9]{12})$/;
        let cvvRegex =/^[0-9]{3,4}$/
        let isValid = false;
        let validCvv=false;
        let validName=false;

        // to check if the name is valid
        if(emptyName.value==""){
            console.log('the name is not valid');
            validName=false;
        }else{
            console.log('name is valid');
            validName=true;
        }

        // to check if the cvv is valid 
        if(cvvRegex.test(emptycvv.value)){
            validCvv=true;
        }
        
        // to check the card number entered is valid
        if (visaRegEx.test(emptyccnum.value)) {
          isValid = true;
        } else if(mastercardRegEx.test(emptyccnum.value)) {
          isValid = true;
        } else if(amexpRegEx.test(emptyccnum.value)) {
          isValid = true;
        } else if(discovRegEx.test(emptyccnum.value)) {
          isValid = true;
        }
         
        // if all three fields are valid then send to register controller  in php using AJAX    
        if(isValid && validName && validCvv){
            console.log('all the fields are valid');

            // to push all the values in the array and then stringify it to send it to php controller
            let userPlan = localStorage.getItem('plan');
            let userName = localStorage.getItem('email');
            let userPass = localStorage.getItem('pass');
           
            userDataArr.push(userPlan,userName,userPass,emptyName.value,emptyccnum.value,emptycvv.value,monthVal,yearVal);
            console.log(userDataArr);
            let userData = JSON.stringify(userDataArr);

            //using AJAX to send all the user data 
            $.ajax({
            
                type: "POST",
                url: 'http://127.0.0.1:8080/php/NETFLIX_CLONE/register/getUserData',
                data: {data : userData},
                success: function(data){
                    console.log(data);
                    //loading animation
                    document.querySelector(".checkoutContainer").style.display = "none";
                    document.querySelector(".netflixFrontContainer").style.display = "none";
                    document.querySelector(".loader").classList.add("spinner");
                    document.querySelector(".body").style.backgroundColor = "black";

                    //when data is received then redirect user to the main page
                    if(data){
                        setTimeout(() => {
                            window.location.replace('http://127.0.0.1:8080/php/NETFLIX_CLONE/main/index');
                        },3000);
                        
                    } 
                },
                error: function(xhr, status, error){
                    console.error(xhr);
                }
            });
        }else{
            console.log('all the fields are not valid');
        }

    }

    // to set the click event on the button and perform the form function
    function setEventListeners(){
        let btn = document.getElementById('checkoutBtn');
        btn.addEventListener("click", function() {
            formValidation();
        });
        
    }

    
    function init(){
        $(function(){
            $("body").hide();
            $("body").fadeIn(1000);
        })
       
        console.log('this is the checkout page');
        setEventListeners();
    }

    document.addEventListener("DOMContentLoaded", function (){
        init();
    });


})();
    // to fade the page when redirect
    $(function(){
        $("body").hide();
        $("body").fadeIn(1000);
    })

    function signupValidation(){
        
        //variable and regrex declaration for email
        let email = document.getElementById("email").value;
        let lblError = document.getElementById("lblError");
        let validEmail=false;
        lblError.innerHTML = "";
        let expr =new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i); 

        // variable declaration for password
        let pass = document.getElementById("pass").value;
        let lblErrorPass = document.getElementById("lblErrorPass");
        let validPass=false;
        lblErrorPass.innerHTML = "";
        let enableBtn=document.getElementById('nextbtn');
        let styleEmail = document.getElementById("email");
        let stylePass = document.getElementById("pass");

        // to check if the email is valid 
        if (!expr.test(email)) {
            lblError.innerHTML = "Invalid email address.";
        }else{
            validEmail=true;
        }

        // to check if the password is valid 
        if (pass.length < 6) {
            lblErrorPass.innerHTML="Password should be between 6 and 20 characters";
        }else if(pass.length>20){
            lblErrorPass.innerHTML="Password should be between 6 and 20 characters";
        }else{
            validPass=true;
        }
    
        // enable button if the password and email are correct
        if(validEmail && validPass){    
            enableBtn.disabled = false;    
            enableBtn.style.backgroundColor='red';
            enableBtn.style.color='white';
            styleEmail.style.backgroundColor = "white";
            stylePass.style.backgroundColor = "white";
        }else{
            console.log('not sending the data');
            enableBtn.disabled = true;
            enableBtn.style.color=' rgb(161, 157, 157)';
            enableBtn.style.backgroundColor=' rgb(43, 40, 40)';
            styleEmail.style.backgroundColor = "white";
            stylePass.style.backgroundColor = "white";
        }  
    }

    // to send signup  data to ajax
    function sendSignupData(){    

        let enableBtn=document.getElementById('nextbtn');        

            enableBtn.addEventListener("click", function() {

                // get the form data
                let userDataArr=[];
                let sendEmail = document.getElementById("email").value;
                let sendPass = document.getElementById("pass").value;
                let userError=document.getElementById('userError');

                userDataArr.push(sendEmail,sendPass);
                let userData = JSON.stringify(userDataArr);

                console.log('the button is enabled');
                console.log(sendEmail);
                console.log(sendPass);          
                window.history.forward();    
                $.ajax({
        
                    type: "POST",
                    url: 'http://127.0.0.1:8080/php/NETFLIX_CLONE/login/loginUser',
                    data: {loginData : userData},
                    success: function(data){
                        console.log(data)
                        if(data=='true'){
                            document.querySelector(".registerContainer").style.display = "none";
                            document.querySelector(".netflixFrontContainer").style.display = "none";
                            document.querySelector(".loader").classList.add("spinner");
                            document.querySelector(".body").style.backgroundColor = "black";
                            if(data){
                                setTimeout(() => {
                                    window.location.replace('http://127.0.0.1:8080/php/NETFLIX_CLONE/main/index');
                                },3000);
                                
                            } 
                        }else if(data=='false'){
                            userError.style.display='block';
                        }   
                    
                    },
                    error: function(xhr, status, error){
                        console.error(xhr);
                    }
                });  
            });        
    }
    

    sendSignupData();
    
   
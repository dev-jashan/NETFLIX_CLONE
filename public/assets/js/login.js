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
                let sendEmail = document.getElementById("email").value;
                let sendPass = document.getElementById("pass").value;
                console.log('the button is enabled');
                console.log(sendEmail);
                console.log(sendPass);          
                window.history.forward();      
            });        
    }
    

    sendSignupData();
    
   
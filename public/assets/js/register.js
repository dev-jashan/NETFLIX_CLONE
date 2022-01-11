$(function(){
    $("body").hide();
    $("body").fadeIn(1000);
 })
 var value = localStorage.getItem('plan');
 console.log(value);
    function registerValidation(){
        
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
        let enaBtn=document.getElementById('nextbtn');

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
            enaBtn.disabled = false;    
        }else{
            console.log('not sending the data');
            enaBtn.disabled = true;
        }  
    }

    // to send registeration data to ajax
    function sendRegisteration(){    
        let userDataArr=[];
        let enaBtn=document.getElementById('nextbtn');   

        enaBtn.addEventListener("click", function() {

            // get the email and password from the inpu field
            let sendEmail = document.getElementById("email").value;
            let sendPass = document.getElementById("pass").value;

            // to get the user error div
            let userError=document.getElementById('userErrorContainer');

            // to send the data to differnt files of javascript
            localStorage.setItem('email',sendEmail);
            localStorage.setItem('pass',sendPass);
            
            userDataArr.push(sendEmail,sendPass);
            let userData = JSON.stringify(userDataArr);

           // window.history.forward();

            // send email and password to php file to validate the email 
            $.ajax({
        
                type: "POST",
                url: 'http://127.0.0.1:8080/php/NETFLIX_CLONE/register/getUserData',
                data: {checkData : userData},
                success: function(data){
                    console.log(data)   

                    //to check if the email already exist in the database
                    if(data=='true'){
                        userError.style.display="block";
                        $("body").fadeOut(5000,function(){
                            window.location.replace('http://127.0.0.1:8080/php/NETFLIX_CLONE/register/index');
                        })
                            
                    }else if(data=='false'){

                        $(function(){
                            $("body").fadeOut(1000,function(){
                                window.location.replace('http://127.0.0.1:8080/php/NETFLIX_CLONE/checkout/index');
                            })
                        }); 
                    }
                },
                error: function(xhr, status, error){
                    console.error(xhr);
                }
            });
        });        
    }
    
    sendRegisteration();
    
   
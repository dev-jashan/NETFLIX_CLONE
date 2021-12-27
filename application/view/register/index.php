<div class="registerContainer">
    <div class="col-50">
        <h1>Create a password to start your membership</h1>
        <p>just few more steps and you're done!</p>
        <p>we hate paperwork,too.</p>
        
        <span id="lblError" style="color: red"></span>
        <input type="email" id="email" name="email" placeholder="Email" onkeyup="registerValidation();">
        <input type="password" id="pass" name="pass" placeholder="Add a password" onkeyup="registerValidation();">
        <span id="lblErrorPass" style="color: red"></span>
        <label>
            <input type="checkbox"  name="remember">
            Please do not email me Netflix special offers.
        </label>
        
        <div class="nextBtnContainer">
            <button class="nextbtn" id="nextbtn"  disabled>Next</button>
        </div>
    </div>
</div>

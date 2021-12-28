<div class="registerContainer">
    <div class="col-50">
        <span id="lblError" style="color: red"></span>
        <input type="email" id="email" name="email" placeholder="Email" autocomplete="off" onkeyup="signupValidation();" >
        <input type="password" id="pass" name="pass" placeholder="Password" onkeyup="signupValidation();">
        <span id="lblErrorPass" style="color: red"></span>
        <div class="nextBtnContainer">
            <button class="nextbtn" id="nextbtn"  disabled>Sign in</button>
        </div>
        <div class="forgetpassContainer">
            <p>Forgot you Password?</p>
        </div>
        <div class="creatAccContainer">
            <a  href="<?= $root_url?>index/index" class="createAcc">Create an Account</a>
        </div>
    </div>
</div>

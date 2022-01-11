
<div class="checkoutContainer">
    <!-- to show images of all the cards accepted -->
    <div class="col-50">
        <h1>Setup your debit or credit</h1>
        <h1>Card</h1>
        <div class="icon-container">
            <i class="fa fa-cc-visa" style="color:navy;"></i>
            <i class="fa fa-cc-amex" style="color:blue;"></i>
            <i class="fa fa-cc-mastercard" style="color:red;"></i>
            <i class="fa fa-cc-discover" style="color:orange;"></i>
        </div>

        <!-- user input  -->
        <label for="cname">Name on Card</label>
        <input type="text" id="name" name="cardname"  onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) || (event.charCode==32)" >
        <label for="ccnum">Credit card number</label>
        <input type="text" id="ccnum" name="cardnumber"  maxlength="16" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/[^0-9]/g, '$1');">
        <label for="expmonth">Exp Month</label>

        <!-- <input type="text" id="expmonth" name="expmonth" placeholder="September"> -->
        <select name="month" id="months">
            <option value="Jan">Jan</option>
            <option value="Feb">Feb</option>
            <option value="Mar">Mar</option>
            <option value="Apr">Apr</option>
            <option value="May">May</option>
            <option value="June">June</option>
            <option value="July">July</option>
            <option value="Aug">Aug</option>
            <option value="Sept">Sept</option>
            <option value="Oct">Oct</option>
            <option value="Nov">Nov</option>
            <option value="Dec">Dec</option>
        </select>
        <div class="row">
            <div class="col-50">
            <label for="expyear">Exp Year</label>
            <select name="year" id="years">
                <option value="2022">2022</option>
                <option value="2023">2023</option>
                <option value="2024">2024</option>
                <option value="2025">2025</option>
                <option value="2026">2026</option>
                <option value="2027">2027</option>
                <option value="2028">2028</option>
                <option value="2029">2029</option>
                <option value="2030">2030</option>
                <option value="2031">2031</option>
                <option value="2032">2032</option>
                <option value="2033">2033</option>
                <option value="2034">2034</option>
                <option value="2035">2035</option>
            </select>
            </div>
            <div class="col-50">
            <label for="cvv">CVV</label>
            <input type="text" id="cvv" name="cvv" maxlength="4" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/[^0-9]/g, '$1');">
            </div>
        </div>
        </div>

        <!-- creating the checkout button --> 
        <div class="checkoutBtnContainer">
            <button class="checkoutBtn" id="checkoutBtn">Start Membership</button>
        </div>
    </div>
    
    </div>
  </div>
</div>
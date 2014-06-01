$(document).ready(function(e){
    $("#loginButton").on("click", function(e) {
        $('#loginWin').submit();
    });
        $('#loginWin').on("submit", function(e){
            $("#myModal").modal("hide");
            $("#result").modal("show");
            $.ajax({
            type: 'POST',
                    data: $('#loginWin').serialize(),
                    url: 'login',
                    dataType : 'json',
                    success: function(result) {
                        if(result['status']==1){
                            $("#loginresult").html('<h3><span class="glyphicon glyphicon-ok"></span> ยินดีต้อนรับ, '+result['name']+'</h3>');
                            setTimeout(refresh,1000);
                        }else{
                            $("#loginresult").html('<h3><span class="glyphicon glyphicon-remove"></span> อีเมล์หรือรหัสผ่านไม่ถูกต้อง</h3>');
                            setTimeout(refresh,1000);
                        }
                    }
            });
            return false;
            e.preventDefault();
        });
        
        function refresh(){
                document.location = "";
        }
        function refreshi(){
                document.location = "index.jsp";
        }
        
        
        $('#regisform').on("submit", function(e){
                $("#regisresult").modal("show");
                $.ajax({
                type: 'POST',
                        data: $('#regisform').serialize(),
                        url: 'AddUser',
                        dataType : 'json',
                        success: function(result) {
                            if(result['status']==1){
                                $("#registextresult").html('<h3><span class="glyphicon glyphicon-ok"></span> ลงทะเบียนสำเร็จ</h3>');
                                setTimeout(refreshi,1000);
                            }else{
                                $("#registextresult").html('<h3><span class="glyphicon glyphicon-remove"></span> อีเมล์นี้มีในระบบแล้ว ไม่สามารถลงทะเบียนซ้ำได้</h3>');
                                setTimeout(refresh,1000);
                            }
                        }
                });
            return false;
            e.preventDefault();
        });
        
        
        
        $('#changeInfoUser').on("submit", function(e){
                $("#userchangeresult").modal("show");
                $.ajax({
                type: 'POST',
                        data: $('#changeInfoUser').serialize(),
                        url: 'changeinformation',
                        dataType : 'json',
                        success: function(result) {
                            if(result['status']==1){
                                $("#userchangetextresult").html('<h3><span class="glyphicon glyphicon-ok"></span> บันทึกข้อมูลสำเร็จ</h3>');
                                setTimeout(refreshi,1000);
                            }else{
                                $("#userchangetextresult").html('<h3><span class="glyphicon glyphicon-remove"></span> รหัสผ่านเก่าไม่ถูกต้อง !</h3>');
                                setTimeout(refresh,1000);
                            }
                        }
                });
            return false;
            e.preventDefault();
        });
        
        
});
        function Ying(){
        //prompt("Please enter your name");
        var today = new Date();
                var day = ["Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"];
                var month = ["Jan", "Feb", "Mar", "Apirl", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"];
                var thisday = day[today.getDay()] + " " + today.getDate() + " " + month[today.getMonth()] + " " + today.getFullYear();
                alert("Hello " + prompt("Please enter your name") + "\n" + thisday);
        }
function CheckText(value){

var count = value.length;
        for (var i = 0; i < count; i++){
if (!(isNaN(value.charAt(i))) & value.charAt(i) != " "){
alert("ใส่แค่ตัวหนังสือเท่านั้น");
        if (document.form.name.value){
document.form.name.focus();
        break;
}
if (document.form.lname.value){
document.form.lname.focus();
        break;
}
}
}
}

function Result(){
var name = document.form.name.value;
        var lname = document.form.lname.value;
        document.form.namelast.value = name + " " + lname;
}

function CheckMail(){
var mail = document.form.email.value;
        if (mail.indexOf('@') == - 1 || mail.indextOf('.' == - 1)){
alert("Don't type not email");
        document.form.namelast.focus();
}
}

function WhToday(){
var tday = new Date();
        var days = ["Sunday", "Monday", "Tuesday", "Wendesday", "Thursday", "Friday", "Sathurday"];
        document.form.today.value = days[tday.getDay()];
}

function likeNum(v){

if (!(isNaN(v.value))){
if (v.value < 5 || v.value > 9){
alert("Please input number 5 to 9 only.");
        document.form.numlike.focus();
}
} else{
alert("Please input number 5 to 9 only.");
        document.form.numlike.focus();
}
}

var count = 0;
        function Change(){

        if (count == 0){
        document.getElementById("ying").src = "vh.png";
                document.getElementById("addtext").innerHTML = "รู้สึกฮามากๆ";
                count = 1;
        } else{
        document.getElementById("ying").src = "h.png";
                document.getElementById("addtext").innerHTML = "รู้สึกขาดสีสัน";
                count = 0;
        }
        }

function Calculate(){
var price = parseInt(document.form.price.value);
        var amount = parseInt(document.form.amount.value);
        document.form.total.value = price * amount;
}

function CountDown(){

var r = parseInt(document.form.countdown.value);
        r -= 1;
        if (r == - 1){
return;
}
document.form.countdown.value = r;
        setTimeout("CountDown()", 1000);
}
function newDoc() {
window.open('http://www.google.com');
}


		
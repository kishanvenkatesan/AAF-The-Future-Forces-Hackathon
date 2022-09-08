<?php
session_start();
if(!isset($_SESSION['userId'])){ header('location:login.php');}
if(!isset($_SESSION['email'])){ header('location:login.php');}
?>
<!DOCTYPE html>
<html>
 <head>
 <title>Apply for loan</title>
  <?php require 'assets/autoloader.php'; ?>
  <?php require 'assets/db.php'; ?>
  <?php require 'assets/function.php'; ?>  
</head>
<style>
  @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap");
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Poppins", "sans-serif";
}

body {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

::selection {
    color: #ececec;
    background: #00b3ff;
}

.form {
    position: relative;
    background: #f2f3f7;
    width: 100%;
    max-width: 900px;
    border-radius: 12px;
    box-shadow: -3px 3px 10px -5px rgba(0, 0, 1, 0.2);
    padding: 30px 30px;
}

.form h2 {
    font-size: 30px;
    font-weight: 700;
}

.form p {
    font-size: 14px;
    padding-bottom: 8px;
}

.form form .profile-img {
    margin: 18px 30px;
    position: absolute;
    top: 0;
    right: 0;
    width: 75px;
    height: 75px;
    background: #f2f3f7;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    /* background-image: url('../Images/1.jpg'); */
    background-image: url("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/768px-Circle-icons-profile.svg.png");
    border-radius: 50%;
    border: 4px solid #006692;
}

.file-upload {
    position: absolute;
    top: 0;
    right: -15px;
    height: 35px;
    width: 35px;
    display: flex;
    border-radius: 50%;
    border: 2px solid #d2d3d7;
    overflow: hidden;
    background-image: linear-gradient(to bottom, #006692, #f2f3f7 50%);
    background-size: 100% 200%;
    transition: all 1s;
    font-size: 14px;
    cursor: pointer;
}

.form input[type="file"] {
    position: relative;
    height: 40px;
    width: 40px;
    padding: 20px;
    opacity: 0;
    cursor: pointer;
}

.form i {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size: 14px;
    color: #333;
    z-index: 100;
    pointer-events: none;
    cursor: pointer;
}

.file-upload:hover {
    background-position: 0 100%;
}

.file-upload:hover i {
    color: #2983aa;
}

.form form {
    margin: 8px 0;
}

.form form .error-text {
    display: none;
    color: #851923;
    padding: 4px 6px;
    text-align: center;
    border-radius: 4px;
    background: #ffe3e5;
    border: 1px solid #dfa5ab;
    margin-bottom: 8px;
}

.form .grid-details {
    display: flex;
}

.form .grid-details .input:first-child {
    margin-right: 8px;
    width: 100%;
}

.form .grid-details .input:last-child {
    margin-left: 8px;
    width: 100%;
}

.form form .input {
    display: flex;
    margin-bottom: 6px;
    flex-direction: column;
}

.form form .input input {
    height: 40px;
    width: 100%;
    font-size: 14px;
    padding: 0 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
}

.form form .input input:focus,
.form form .input input:valid {
    border: 2px solid #00b3ff;
    transition: 0.1s ease;
    outline: none;
}

.form form input.button {
    height: 45px;
    border: none;
    color: #f2f3f7;
    width: 100%;
    font-size: 17px;
    background: #006692;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 13px;
    border: 2px solid #2983aa;
}

.form .link {
    text-align: center;
    margin: 10px 0;
    font-size: 17px;
}

.form .link a {
    color: #006692;
}

.form .link a:hover {
    text-decoration: underline;
}

button {
  background-color: #008CBA;
  color: black; 
  border: none;
  padding: 4px 16px;
  border-radius: 12px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
</style>   
<div class="bod">
<body style="background-image: url('images/ver_log.jpg');">
    

    <div class="form" style="text-align: center;">
        <h2>Verify Your Account</h2>
        <p class="Loan">Hi, to Access your details we need your Email authentication!<br>
        <p>Please check your mail for the six digit <em><b>OTP</b></em></p>
        <input type="text" id="otp">
        <button type="button" onclick = "func()">Submit</button>
    </div>
</div>
	<?php
        // session_start();
        if(is_array($_POST)){ foreach ($_POST as $key => $value) { ${$key} = $value; } }
        $email = $_SESSION['emailId'];
        
        // now all my  post data is available as PHP vars
        //(matching my html form input names)
        // <input name=first_name 
        // then ->becomes  $_POST['first_name'] 
        // then ->becomes var $first_name;
        $otp=mt_rand(100000,999999);
        // now rename and assign vars
        $opts = array(
                'http' => array (
                    'method'=>"POST",
                    'header'=>
                      "Accept-language: en\r\n".
                      "Content-type: application/x-www-form-urlencoded\r\n",
                    'content'=>http_build_query(array("email"=>$email,"OTP"=>$otp))
          )
        );
        
        $context = stream_context_create($opts);
        
        $fp = fopen('https://hooks.zapier.com/hooks/catch/13314645/be9hawo/', 'r', false, $context);        
      	
    ?>
</body>
<script>
  
  function func(){
    var vari = document.getElementById("otp").value;
    if(vari == <?php echo $otp ?>){
      alert("Successful");
      window.open("personaldetails.php");
    }
    else{
      alert("Wrong otp");
    }     
  }
</script>
</html>

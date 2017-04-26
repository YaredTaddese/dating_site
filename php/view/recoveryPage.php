<!DOCTYPE html>

<html>
    <head>
        <title> Online Dating System </title>
        <meta charset="utf-8" />
        <meta name="keywords" content="dating" /> <!-- keywords not finished -->
        <meta name="description" content="Online Dating System" /> <!-- description not finished -->
        <meta name="viewport" content="width=device-width,initial-scale=1" />
        
        <link rel="stylesheet" href="../../css/welcome_2.css" />
        
        <script src="js/formPopUp.js"></script>
        
        <!-- head not finished -->
    
    </head>
    
<body>
    
    <header>
        <img src="../../images/love-icon.jpg" alt="logo" id="logout"/>
        <div style="float: left;margin-left: 4em;line-height: 8px;width: 32em">
            <p style="font-size: 3.1em;font-family :'Blackadder ITC'"> Welcome to Ketero Website </p>
            <p style="font-size: 1.5em; font-family :  serif"> Ethiopians’ Great Online Dating Site</p>
            <p style="font-size: 1.889em; font-family :  serif ; margin-left : 6em; color : orange;"> 
                 Find your soulmate !  </p>
           
        </div>

        <div style="position:relative;top:7em;float:right;">
           <a href="../../signup.html" class="button"> Join&nbsp;Now</a>
           <a href="../../index.html" class="button"> Log&nbsp;In</a>    
        </div>   
       
    </header>

<?php 
    require_once('../util/class.phpmailer.php');
    require_once('../util/class.smtp.php');
    require_once('../controller/ProfileHandler.php');
    require_once('../util/connection.php');
    
    if(!empty($_GET['email'])){
        $phandler = new ProfileHandler($_GET['email']);
        $self  = $phandler->self;
    }

    if(empty($_GET['email'])){
        header("location:../../index.html");
    }
    else if(empty($_GET['token'])){
        //send email

            $mail = new PHPMailer(); // defaults to using php "mail()"

            $body = 'Click this link to recover your password : 
               <a href="localhost/seproject/php/view/recoveryPage.php?email='.$_GET['email'].'&token="> Recover your password </a>';
            
            $mail->IsSMTP();
            $mail->SMTPAuth = true;
            $mail->SMTPSecure = "ssl";
            $mail->Host = "smtp.gmail.com";
            $mail->port = 465;
            $mail->Username = "yad.tad.yt@gmail.com";
            $mail->Password = "icui4cumy";
            //$mail->SetFrom('yad.tad.yt@gmail.com', 'Yared Tadesse');

            //$mail->AddReplyTo("yad.tad.yt@gmail.com","Yared Taddese");

            //$address = "whoto@otherdomain.com";
            //$mail->AddAddress($address, "John Doe");

            $mail->From = $self->email;
            $mail->FromName = $self->screenName;
            $mail->Subject    = "Recover password for your ketero dating website account";

            $mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test

            $mail->MsgHTML($body);

            $mail->AddReplyTo($_GET['email'],"Webmaster");

            if(!$mail->Send()) {
                $mailError =  $mail->ErrorInfo;
            } else {
                $mailError = "";
            }
            echo '
            <div style="width:82%;margin: 0 auto;height:380px;background-color:white;box-shadow: .3em .3em .5em #999;">

    <img src="../../images/flower.jpg" alt="flower" style="width:34em;"/>
    
    <form action="" method="get" id="login-form">
        <p style="font-size: 2.5em; font-family :"Blackadder ITC";text-align: center;margin:0;padding:0">Password Recovery</p>
        <ul>
            <li>
                <!--<label>Email</label>-->
                    <input type="email" name="email" id="email" placeholder="Your email address" autofocus required/><br/>
            </li>';
            if(!empty($emailError)){
                echo '<li>
                <input type="submit" class="button" value="Your email was not sent.Please Try Again" />
                      </li>';
            }
            else{
                echo '<li>
                <input type="submit" class="button" value="Your email was not sent. Please Try again" />
                     </li>';
            }
            /*echo '
            <li>
                <input type="submit" class="button" value="Get recovery link" />
            </li>*/
       echo ' </ul>
        
    </form>';
    }
    else if(!empty($_GET['token'])){
        header("location:../../index.html");
    }
    else{
         header("location:../../index.html");
    }
?>

    
    
        
        
        
           
    
    
     
<!-- hidden forms for login and sign up -->    
 



</body>

</html>
        
        
        
    
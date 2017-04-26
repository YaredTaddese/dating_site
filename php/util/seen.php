<?php
    if(empty($_GET['loaderEmail']) || empty($_GET['activeEmail'])){
        echo "";
        exit();
    }
    $ph = new ProfileHandler($_GET['loaderEmail']);
    $self = $ph->self;
    $self->updateActivity(time());
    $mh = new MessageHandler();  
          
        $interactor = new Profile($_GET['activeEmail']);
        $ph->init($interactor);
        
 
        if(empty($_GET['activeEmail'])){
            if(empty($unseenMessages)){
                echo "";
            }
            else{
                foreach($unseenMessages as $message){
                    $profile = new Profile($message->sender);
                    $ph->init($profile);
                    $profile->viewAsUnseen();
                    $message->view($self->email);
                    $message->markAsSeen();
                }
            }
        }
        else{
            echo "<div class='postMessage' style='width:29.55em;'>
                <span class='time' style='float:none;font-size:14px;'>
                    message @ $interactor->screenName  
                </span>
            </div>
            <div class='postForm' id='postForm'> 
            <form action='messagePage.php' method='POST' enctype='multipart/form-data'>
                <textarea name='postText'  rows='2'>
                </textarea><br/>
                <input type='file' name='postPhoto'/>
                <input type='submit' value='Send' style='margin-left:2.6em;'/>
                <input type='hidden' value='$interactor->email' name='email'/>
            </form>
            </div>";
                
        }
            
if(!empty($_GET['activeEmail'])){
    if(isset($_GET['more'])){
        $messages = $mh->getNormalMessages($self->email,$interactor->email,true,$_GET['index']);
    } 
    else{
        $messages = $mh->getNormalMessages($self->email,$interactor->email);
    }
    if(empty($messages)){
        if(empty($_GET['more'])){
            $notification = "No messages have been sent or recieved.";
        }
        else{
            $notification = "You have seen all messages.";
        }
        echo'
            <div class="postMessage" style="text-align:center;color:#333;font-size:1.2em;">
                <p class="postText" > 
                    '.$notification.'
                </p>
            </div>  '; 
    }
    else{
        foreach($messages as $message){
            $message->view($self->email);
            if(!$message->isSeen && ($self->email===$message->reciever)){
                $message->markAsSeen();
            }
        }
        echo"
        <a class='more' href='messagePage.php?email=$interactor->email&more=yes&index=$mh->currentNIndex'>
            See Previous Messages
        </a>
        ";  
    }
}   
?>    
             



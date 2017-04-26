<?php

    require_once('../controller/ProfileHandler.php');
    require_once('../controller/MessageHandler.php');

    if(empty($_GET['loaderEmail']) || empty($_GET['activeEmail'])){
        echo "";
    }
    else{
        $messageHandler = new MessageHandler($_GET['loaderEmail']);
        $messages = $messageHandler->getHerUnseenMessages($_GET['loaderEmail'],$_GET['activeEmail']);
        if(!empty($messages)){
            $innerHTML = "";
            foreach($messages as $message){
                $message->view($_GET['loaderEmail']);
                $message->markAsSeen();
            }
        }
    }

?>
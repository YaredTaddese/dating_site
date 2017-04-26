function chat(){
    var xmlhttp;
    if(window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest();
    }
    else{
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    
    var messageSection = document.getElementById("section");
    var postForm = document.getElementById("postForm");
    var loaderEmail = document.getElementById("loaderEmail").innerHTML;
    var activeEmail = document.getElementById("activeEmail").innerHTML;
    var newMessages = document.createElement("div");

    
    xmlhttp.onreadystatechange = function(){
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
            if(!document.getElementById("noMessages")){
                postForm.insertAdjacentHTML("afterend",xmlhttp.responseText);
            }
        }
          
    };
    
    xmlhttp.open("GET","../util/chat.php?loaderEmail=" + loaderEmail + "&activeEmail=" + activeEmail,true);
    xmlhttp.send(null);
    
    
    
}

setInterval(chat,5000);
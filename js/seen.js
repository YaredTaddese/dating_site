function seen(){
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
    var index = document.getElementById("jsIndex").innerHTML;
    var more = document.getElementById("jsMore").innerHTML;
    var newMessages = document.createElement("div");

    alert("dsfs");
    xmlhttp.onreadystatechange = function(){
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
            if(!document.getElementById("noMessages")){
                messageSection.innerHTML = xmlhttp.responseText;
                alert(xmlhttp.responseText);
            }
        }
          
    };
    
    var url = "../util/seen.php?loaderEmail=" + loaderEmail + "&activeEmail=" + activeEmail ;
    if(!index && !more)
        url += "&more=yes&index" + index;

    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
    
    
    
}

setInterval(seen,5000);
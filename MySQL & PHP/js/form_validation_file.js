function validateEditAdminForm(){
    var un = document.forms["form"]["username"].value; 
    var pw = document.forms["form"]["password"].value;
    if(un == "" || un == null){alert("Error: Username cannot be blank!");return false;}
    if (!un.match(/^\w+$/)){alert("User name must consists of letters, numbers or special character: Underscore (_) ");;return false;}
    if(pw == "" || pw == null) {alert("Error: Password must not be blank");return false;}
    else{if(pw.length < 5 || pw.length>25){alert("Error: Password must contain at least 5 characters and not more than 25 characters!");return false;}
        if(pw == un) {alert("Error: Password must be different from Username");return false;}
        if(!pw.match(/^[A-Za-z0-9!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+$/)) {alert("Error: Password must contain alphanumeric characters or special characters");return false;}}
};


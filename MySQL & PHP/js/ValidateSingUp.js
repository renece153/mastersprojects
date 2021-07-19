function validateSignUpForm(){
    var e = document.forms["form"]["uemail"].value;
    var atpos = e.indexOf("@");
    var dotpos = e.lastIndexOf(".");
    var uname = document.forms["form"]["uusername"].value; 
    var pword = document.forms["form"]["upassword"].value;
    var f = document.forms["form"]["ufirstname"].value;
    var l = document.forms["form"]["ulastname"].value;
    var m = document.forms["form"]["umobno"].value;
    var cpword = document.forms["form"]["ucpassword"].value;
    
    if(e == "" || e == null){alert("Error: Email cannot be blank!");document.getElementById("uemail").focus();return false;}else{
        if(atpos<1 || dotpos<atpos+2 || dotpos+2>=e.length){alert("Not a valid e-mail address.");document.getElementById("uemail").focus();return false;}}
    if(f == "" || f == null){alert("First name should not be blank");document.getElementById("ufirstname").focus();return false;}else{if(!/^[A-Za-z ]+$/.test(f)) {alert("Error: First Name should only contain letters or spaces!");document.getElementById("ufirstname").focus();return false;}}
    if(l == "" || l == null){alert("Last Name should not be blank");document.getElementById("ulastname").focus();return false;}else{if(!/^[A-Za-z ]+$/.test(l)) {alert("Error: Last Name should only contain letters or spaces!");document.getElementById("ulastname").focus();return false;}}
    if(m == "" || m == null){alert("Error: Mobile Number should not be blank");document.getElementById("umobno").focus();return false;}
    else{
    if(!/^[0-9]+$/.test(m)){alert("Error: Mobile Number should only be comprised of numbers");document.getElementById("umobno").focus();return false;}
    if(m.length != 10){alert("Error: Mobile Number should be 10 digits");document.getElementById("umobno").focus();return false;}}
    if(uname == "" || uname == null){alert("Error: Username cannot be blank!");document.getElementById("uusername").focus();return false;}
    if (!uname.match(/^\w+$/)){alert("User name must consists of letters, numbers or special character: Underscore (_) ");document.getElementById("uusername").focus();return false;}
    if(pword == "" || pword == null) {alert("Error: Password must not be blank");return false;}
    else{if(pword.length < 5 || pword.length>25){alert("Error: Password must contain at least 5 characters and not more than 25 characters!");document.getElementById("upassword").focus();return false;}
        if(pword == uname) {alert("Error: Password must be different from Username");document.getElementById("upassword").focus();return false;}
    var rechar = /[0-9]/;
    if(!rechar.test(pword)){alert("Error: password must contain at least one number (0-9)!");document.getElementById("upassword").focus();return false;}
    rechar = /[A-Za-z]/;
    if(!rechar.test(pword)) {alert("Error: password must contain at least one lowercase or uppercase letter (A to Z)!");document.getElementById("upassword").focus();return false;}
    rechar = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/;       
    if(!rechar.test(pword)){alert("Error: password must contain at least one special character: !@#$%^&*()_+\-=\[\]{};':\"\\|,.<>\/?!");document.getElementById("upassword").focus();return false;}
    if(pword != cpword){alert("Error: Password should match!");document.getElementById("ucpassword").focus();return false;}
        }
};      
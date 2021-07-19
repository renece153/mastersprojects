function ValidateClassForm(){
    var cname = document.forms["form"]["class_name"].value;
    var csize = document.forms["form"]["class_size"].value;
    var cdesc = document.forms["form"]["class_description"].value;
if(cname == "" || cname == null){alert("Error: Class Name Should not be blank");document.getElementById("class_name").focus();return false;}
else{if(!/^[A-Za-z0-9 _]+$/.test(cname)){alert("Error: Class Name must consists of letters, numbers or special character: Underscore (_) and Space ( ) ");document.getElementById("class_name").focus();return false;}}

if(csize == "" || csize == null){alert("Error: Class Size Should not be blank");document.getElementById("class_size").focus();return false;} 
else {if(csize < 5 || csize > 40){alert("Error:Class Size should be 5 or more but not more than 40");document.getElementById("class_size").focus();return false;}}


if(cdesc == "" || cdesc  == null){alert("Error: Class Description Should not be blank");document.getElementById("class_description").focus();return false;}else{
    if(!/^[A-Za-z0-9 ]+$/.test(cdesc)) {alert("Error: Quiz Description should only contain alphanumeric characters and spaces");document.getElementById("class_description").focus();return false;}
    if(cdesc.length > 255){alert("Error: Quiz Description must no more than 255 characters!");document.getElementById("class_description").focus();return false;}
}
};

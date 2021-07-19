function showAlert_to_delete(delete_url){
if (confirm('Are you sure you delete this record?')) {
  document.location = delete_url;
  alert("Record has been removed");
  console.log('Removed record from Database');
} else {
  alert("Record was not been removed");
  console.log('Did not remove record from database');
}
};

function showAlert_to_save(save_url){
if (confirm('Are you sure you want to save this thing into the database?')) {
  document.location = save_url;
  alert("Record has been updated");
  console.log('Updated Record to database');
} else {
  alert("Cancelled operation to update record!");
  console.log('Did not update record');
}
};

function ValidateExamForm(){
    var tit = document.forms["form"]["title"].value;
    var tlimit = document.forms["form"]["timelimit"].value;
    var qdesc = document.forms["form"]["qdesc"].value;
    var titems = document.forms["form"]["titems"].value;
    var chkopt = document.forms["form"]["chkopt"].value;
    
if(tit == "" || tit == null){alert("Error: Quiz Title Should not be blank");document.getElementById("title").focus();return false;}
else{if(!/^[A-Za-z0-9 _]+$/.test(tit)){alert("Error: Title must consists of letters, numbers or special character: Underscore (_) and Space ( ) ");document.getElementById("title").focus();return false;}}
if(tlimit == "" || tlimit == null){alert("Error: Time Limit Should not be blank");document.getElementById("timelimit").focus();return false;}
if(qdesc == "" || qdesc == null){alert("Error: Quiz Description Should not be blank");document.getElementById("qdesc").focus();return false;}else{
    if(!/^[A-Za-z0-9 ]+$/.test(qdesc)) {alert("Error: Quiz Description should only contain alphanumeric characters and spaces");document.getElementById("qdesc").focus();return false;}
    if(qdesc.length > 255){alert("Error: Quiz Description must no more than 255 characters!");document.getElementById("qdesc").focus();return false;}
}
if(titems == "" || titems == null){alert("Error: Total Number of items should not be blank");document.getElementById("titems").focus();return false;} else{
    if(titems < 5 || titems > 50){alert("Error:Total Number of Questions should be 5 or more but less than 50");document.getElementById("titems").focus();return false;}
    }
if(chkopt == "" || chkopt == null){alert("Error: Select a quiz design!");return false;}
};
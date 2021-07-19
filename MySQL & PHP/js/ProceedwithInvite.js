function showAlert_to_continue(pending_url){
if (confirm('Are you sure you continue?')) {
  document.location = pending_url;
  alert("Action has been saved");
  console.log('Update record to Database');
} else {
  alert("Action has been saved");
  console.log('Did not Update record to Database');
}
};

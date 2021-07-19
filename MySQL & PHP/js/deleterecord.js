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

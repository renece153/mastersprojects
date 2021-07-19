<?php
session_start();
if(isset($_SESSION["email"])){
session_destroy();
}
include_once 'dbConnection.php';
$ref=@$_GET['q'];
$email = $_POST['email'];
$password = $_POST['password'];
$is_student = $_POST['category'];

$email = stripslashes($email);
$email = addslashes($email);
$password = stripslashes($password); 
$password = addslashes($password);
$is_student = stripslashes($is_student);
$is_student = addslashes($is_student);
$md5_password = md5($password);
//$password=md5($password); 

if ($is_student == "yes") {
$query = ("SELECT user_name from is226_project.user_login_view where email =  '$email' and encrypted_password = '$md5_password' and category = 'S'");
$result = mysqli_query($con,$query) or die('Error! Could not connect to database');

$count=mysqli_num_rows($result);
if($count==1){
while($row = mysqli_fetch_array($result)) {
	$user_name = $row['user_name'];
}

$_SESSION["user_name"] = $user_name;
$_SESSION["email"] = $email;

header("location:student_view.php?q=1");

} 
else
header("location:$ref?w=Wrong Username or Password for Student");
}
else {
	$query = ("SELECT user_name from is226_project.user_login_view where email =  '$email' and encrypted_password = '$md5_password' and category = 'T'");
    $result = mysqli_query($con,$query) or die('Error! Could not connect to database');

    $count=mysqli_num_rows($result);
if($count==1){
while($row = mysqli_fetch_array($result)) {
	$user_name = $row['user_name'];
}
$_SESSION["user_name"] = $user_name;
$_SESSION["email"] = $email;
header("location:teacher_view.php?q=1");
}
else
header("location:$ref?w=Error! Username or Password is incorrect.");
}


?>
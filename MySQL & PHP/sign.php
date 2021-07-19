<?php
include_once 'dbConnection.php';
ob_start();
$user_name = $_POST['uusername'];
$user_name= ucwords(strtolower($user_name));

$first_name = $_POST['ufirstname'];
$first_name= ucwords(strtolower($first_name));

$last_name = $_POST['ulastname'];
$last_name= ucwords(strtolower($last_name));

$gender = $_POST['gender'];
$email = $_POST['uemail'];
$mobile_no = $_POST['umobno'];
$password = $_POST['upassword'];
      
$user_name = stripslashes($user_name);
$user_name = addslashes($user_name);
$user_name = ucwords(strtolower($user_name));

##$name = stripslashes($name);
##$name = addslashes($name);
##$name = ucwords(strtolower($name));

$category = $_POST['category'];
##$category = stripslashes($category);
##$category = addslashes($category);
        
        
$gender = stripslashes($gender);
$gender = addslashes($gender);
$email = stripslashes($email);
$email = addslashes($email);
$mobile_no = stripslashes($mobile_no);
$mobile_no = addslashes($mobile_no);

$password = stripslashes($password);
$password = addslashes($password);
//$password = md5($password);

$query = "CALL is226_project.SP_Insert_to_users('$user_name', '$email' , '$first_name' ,'$last_name' ,'$gender' , '$mobile_no', '$password', '$category')";
$q3=mysqli_query($con,$query);
if($q3 && $category == "yes" )
{
session_start();
$_SESSION["email"] = $email;
$_SESSION["name"] = $user_name;
header("location:student_view.php?q=1");
}
else if ($q3 && $category == "no" )
{
$_SESSION["email"] = $email;
$_SESSION["name"] = $user_name;
header("location:teacher_view.php?q=1");
}
else
{
header("location:knowyouruser.php?q7=Email Already Registered!!!");
}
ob_end_flush();
?>
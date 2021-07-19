<?php
include_once 'dbConnection.php';
$ref=@$_GET['q'];

$signinparam = $_POST['signinparam'];
$password = $_POST['password'];

//$email = stripslashes($email);
//$email = addslashes($email);
//$password = stripslashes($password); 
//$password = addslashes($password);

$query = "SELECT admin_id, session_key, user_name, coalesce (email, admin_grp_email) as email FROM admin_master_list where (email = '$signinparam' or user_name = '$signinparam' ) and admin_password = '$password' and connected_to_session_key = 'Y'";

$result = mysqli_query($con,$query) or die('Error');

$count= mysqli_num_rows($result);
if($count==1){
        while($row = mysqli_fetch_array($result)) {
        $user_name = $row['user_name'];
	$session_key = $row['session_key'];
	$email = $row['email'];
        $admin_id = $row['admin_id'];
        }
        
        session_start();
        if(isset($_SESSION['email'])){
            session_unset();}
            $_SESSION["user_name"] = $user_name;
            $_SESSION["key"] = $session_key;
            $_SESSION["email"] = $email;
            $_SESSION["admin_id"] = $admin_id;
            header("location:admin_view.php?q=1");
            //header("location:$ref?w=Warning : Access denied.$user_name.$session_key.$email");
            }
else header("location:$ref?w=Warning : Access denied.$user_name.$session_key.$email");
 
?>
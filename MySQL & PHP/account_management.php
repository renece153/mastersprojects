<?php
include_once 'dbConnection.php';
session_start();
$email=$_SESSION['email'];

if(@$_GET['q']== 'Tam') {
    
    $email= $_POST['uemail'];
    $first_name = $_POST['ufirstname']; 
    $last_name = $_POST['ulastname']; 
    $user_name = $_POST['uusername'];
    $password = $_POST['upassword'];
    $mobile_no = $_POST['umobno'];
    $gender = $_POST['gender'];
    
    $edit_account = "CALL is226_project.SP_edit_account('$email' , '$user_name' ,'$first_name', '$last_name', '$mobile_no', '$password', '$gender')";
    
    $query_result= mysqli_query($con,$edit_account) or die ('Could save record');
    
     if($query_result) {
            header("location:teacher_view.php?q=1");
            echo "Successfully recoreded account changes";
        } else {
            echo "ERROR: Could not able to execute $edit_account " . mysqli_error($con);
        }
}
elseif(@$_GET['q']== 'Sam') {
    
    $email= $_POST['uemail'];
    $first_name = $_POST['ufirstname']; 
    $last_name = $_POST['ulastname']; 
    $user_name = $_POST['uusername'];
    $password = $_POST['upassword'];
    $mobile_no = $_POST['umobno'];
    $gender = $_POST['gender'];
    
    $edit_account = "CALL is226_project.SP_edit_account('$email' , '$user_name' ,'$first_name', '$last_name', '$mobile_no', '$password', '$gender')";
    
    $query_result= mysqli_query($con,$edit_account) or die ('Could save record');
    
     if($query_result) {
            header("location:student_view.php?q=1");
            echo "Successfully recoreded account changes";
        } else {
            echo "ERROR: Could not able to execute $edit_account " . mysqli_error($con);
        }
}
elseif(@$_GET['q']== 'Aam') {
    
    $aedmin_id = @$_GET['aid'];
    $euser_name = $_POST['username'];
    $epassword = $_POST['password'];
         
    $query = "CALL is226_project.SP_edit_admin_account('$aedmin_id','$euser_name','$epassword')";
    $result = mysqli_query($con,$query) or die('Cannot Edit Admin Account'.$aedmin_id.' '.$euser_name.' '.$epassword);
    
     if($result) {
            header("location:admin_view.php?q=1");
            echo "Successfully recoreded account changes";
        } else {
            echo "ERROR: Could not able to execute $edit_account " . mysqli_error($con);
        }
}
elseif(@$_GET['q']== 'createaccount') {
    
    $c_user_email= $_POST['uemail'];
    $c_first_name = $_POST['ufirstname']; 
    $c_last_name = $_POST['ulastname']; 
    $c_user_name = $_POST['uusername'];
    $c_password = $_POST['upassword'];
    $c_mobile_no = $_POST['umobno'];
    $c_gender = $_POST['ugender'];
    $c_category = $_POST['ucategory'];
         
    $query = "CALL is226_project.SP_Insert_to_users('$c_user_name', '$c_user_email' , '$c_first_name' ,'$c_last_name' ,'$c_gender' , '$c_mobile_no', '$c_password', '$c_category')";
    $result = mysqli_query($con,$query) or die('Cannot Edit Admin Account');
    
     if($result) {
            header("location:admin_view.php?q=2");
            echo "Successfully recoreded account changes";
        } else {
            echo "ERROR: Could not able to execute $edit_account " . mysqli_error($con);
        }
}
elseif(@$_GET['q']== 'umgnt') {
    $user_email= $_POST['email'];
    $first_name = $_POST['first_name']; 
    $last_name = $_POST['last_name']; 
    $user_name = $_POST['user_name'];
    $password = $_POST['password'];
    $mobile_no = $_POST['mobile_no'];
    $gender = $_POST['gender'];
    
    $edit_account = "CALL is226_project.SP_edit_account('$user_email' , '$user_name' ,'$first_name', '$last_name', '$mobile_no', '$password', '$gender')";
    
    $query_result= mysqli_query($con,$edit_account) or die ('Could save record');
    
     if($query_result) {
            header("location:admin_view.php?q=3");
            echo "Successfully recoreded account changes";
        } else {
            echo "ERROR: Could not able to execute $edit_account " . mysqli_error($con);
        }
}
elseif(@$_GET['q']== 'cadmin') {
    $session_key = $_POST['session_key'];
    $to_link = $_POST['to_link']; 
    
    if ($to_link=='y')
    {
        $email_p = $_POST['email'];
        header("location:admin_view.php?q=3cont&step=2&tl=y&sk=$session_key&em=$email_p");
    }
    else{
        header("location:admin_view.php?q=3cont&step=2&tl=n&sk=$session_key");
    }
}
elseif(@$_GET['q']== 'cadmins2') {
    
    if (@$_GET['tl']== 'y'){
    $session_key = $_POST['session_key'];
    $aemail = $_POST['email'];
    $userid = $_POST['userid'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $in_param = $aemail;
    }
    else {
    $session_key = $_POST['session_key'];
    $aemail = '';
    $userid = NULL;
    $username = $_POST['username'];
    $password = $_POST['password'];
    $in_param = $username;    
    }
    
    // Create Admin Account
    $query = "CALL is226_project.SP_create_admin('$username' , '$aemail' ,'$password')";
    $result = mysqli_query($con,$query) or die('Cannot Create Admin account'.$username.$aemail.$password);
    
     if(!$query){echo "ERROR: Failed to Create Admin Account";}
    
    //Link Session Key to Admin Account
    $query2 = "CALL is226_project.SP_link_admin_to_session('$in_param' ,'$session_key')";
    $result2 = mysqli_query($con,$query2) or die('Cannot Connect Admin account to session key'.$session_key.$in_param);
    
    if(!$query2){echo "ERROR: Failed to Link Admin Account";}
    
    if (@$_GET['tl']== 'y'){
        $query3 = "select admin_id from admin_master_list aml where email = '$aemail' and user_name = '$username' limit 1";
        $result3 = mysqli_query($con,$query3) or die('Cannot Link Admin Account to User Account');
        
         while ($row = mysqli_fetch_array($result3)) {
             $eadmin_id = $row['admin_id'];
         }
         
        $query4 = "CALL is226_project.link_user_to_admin('$aemail','$eadmin_id','L')";
        $result4 = mysqli_query($con,$query4) or die('Cannot Link Admin Account to User Account');
        
         if($result4 && $query && $query2) {
            header("location:admin_view.php?q=3");
            echo "Successfully linked account to user";
        } else {
            echo "ERROR: Could not linked account to user";
        }
    }
    else {
        if($query && $query2) {
            header("location:admin_view.php?q=3");
            echo "Successfully created admin account";
        } else {
            echo "ERROR: Did not create an admin account";
        }
    }
}
 else if (@$_GET['q']== 'admmgnt') {
     if (@$_GET['opt']== 'edita'){
         
         $aedmin_id = @$_GET['aid'];
         $euser_name = $_POST['username'];
         $epassword = $_POST['password'];
         
         $query = "CALL is226_project.SP_edit_admin_account('$aedmin_id','$euser_name','$epassword')";
         $result = mysqli_query($con,$query) or die('Cannot Edit Admin Account'.$aedmin_id.' '.$euser_name.' '.$epassword);
         
        if($result){
        header("location:admin_view.php?q=6");
        echo "Successfully eddited admin account";
        } else {
        echo "ERROR: Could not eddited admin account";
        }
         
     }else if (@$_GET['opt']== 'linksesh'){
         $uname = @$_GET['uname'];
         $session_key = $_POST['session_key'];
         
         $query = "CALL is226_project.SP_link_admin_to_session('$uname','$session_key')";
         $result = mysqli_query($con,$query) or die('Could not connect session key to admin account');
         
         if($result){
        header("location:admin_view.php?q=6");
        echo "Successfully linked admin account to session key";
        } else {
        echo "ERROR: Could not link admin account to session key";
        }
     } else if (@$_GET['opt']== 'linkuser'){
         $aedmin_id = @$_GET['aid'];
         $aemail = $_POST['email'];
         
         $query = "CALL is226_project.link_user_to_admin('$aemail','$aedmin_id','L')";
         $result = mysqli_query($con,$query) or die('Cannot link user account to admin account');
         
         if($result){
        header("location:admin_view.php?q=6");
        echo "Successfully linked admin account to user account";
        } else {
        echo "ERROR: Could not link admin account to user account";
        }  
     } else if (@$_GET['opt']== 'rmv'){
        $aedmin_id = @$_GET['aid'];
        
        $query = "CALL is226_project.remove_admin_account('$aedmin_id')";
        $result = mysqli_query($con,$query) or die('Cannot remove admin account');
         
         if($result){
        header("location:admin_view.php?q=6");
        echo "Successfully deleted admin account";
        } else {
        echo "ERROR: Could delete admin account account";
        }  
         
     } else if (@$_GET['opt']== 'rmvsesh'){
        $seshid = @$_GET['seshid'];
        
        $query = "CALL is226_project.SP_remove_session_key('$seshid')";
        $result = mysqli_query($con,$query) or die('Cannot remove session key');
         
         if($result){
        header("location:admin_view.php?q=6");
        echo "Successfully remove session key";
        } else {
        echo "ERROR: Could not remove session key";
        }  
         
     }
     else if (@$_GET['opt']== 'rmvuser'){
         $aedmin_id = @$_GET['aid'];
         $aemail = @$_GET['lkem'];
        
         $query = "CALL is226_project.link_user_to_admin('$aemail','$aedmin_id','U')";
         $result = mysqli_query($con,$query) or die('Cannot link user account to admin account');
         
         if($result){
        header("location:admin_view.php?q=6");
        echo "Successfully linked admin account to user account";
        } else {
        echo "ERROR: Could not link admin account to user account";
        }  
 }
    
 }
?>

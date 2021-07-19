<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>IS226 - PROJECT (Admin) </title>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>
<script src="js/form_validation_file.js" type="text/javascript"></script>
 
<script src="js/bootstrap.min.js"  type="text/javascript"></script>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'/>
<!--alert message-->
<?php if(@$_GET['w'])
{echo'<script>alert("'.@$_GET['w'].'");</script>';}
?>
<!--alert message end-->
<!--start of scripts-->
</head>
<?php
include_once 'dbConnection.php';
?>
<body>
<div class="header">
<div class="row">
<div class="col-lg-6">
<span class="logo">Exam Module</span></div>
<div class="col-md-4 col-md-offset-2">
<?php
include_once 'dbConnection.php';
session_start();
if(!(isset($_SESSION['admin_id']))){
header("location:index.php");
}
else
{
$user_name = $_SESSION['user_name'];
$session_admin_id = $_SESSION['admin_id'];
//$uemail=$_SESSION['email'];
include_once 'dbConnection.php';
echo '<span class="pull-right top title1" ><span class="log1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Hello,</span> <a href="admin_view.php?q=1" class="log log1">'.$user_name;
}
?>
</div>
</div></div>
<div class="bg">

<!--navigation menu-->
<nav class="navbar navbar-default title1">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" >
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" disabled><b>DASHBOARD</b></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li <?php if(@$_GET['q']==1) echo'class="active"'; ?> ><a href="admin_view.php?q=1"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;Home<span class="sr-only">(current)</span></a></li>
        <li class="dropdown <?php if(@$_GET['q']== 2 || @$_GET['q']== 3) echo'active"'; ?>">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account Creation<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="admin_view.php?q=2"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;Create User Account</a></li>
            <li><a href="admin_view.php?q=3"><span class="glyphicon glyphicon-font" aria-hidden="true"></span>&nbsp;Create Admin Account</a></li>
            </ul> </li>
        <li class="dropdown <?php if(@$_GET['q']== 4 || @$_GET['q']== 5 || @$_GET['q']== 6) echo'active"'; ?>">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account Management<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="admin_view.php?q=4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>&nbsp;View Account Logs</a></li>
            <li><a href="admin_view.php?q=5"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;Manage User Accounts</a></li>
            <li><a href="admin_view.php?q=6"><span class="glyphicon glyphicon-font" aria-hidden="true"></span>&nbsp;Manage Admin Accounts</a></li>
            </ul> </li>
        <li <?php if(@$_GET['q']==7) echo'class="active"'; ?> ><a href="admin_view.php?q=7"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;Feedback<span class="sr-only">(current)</span></a></li>
      
		<li class="pull-right"> <a href="logout.php?q=admin_view.php"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Log Out</a></li>
		</ul>
      </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav><!--navigation menu closed-->
<div class="container"><!--container start-->
<div class="row">
<div class="col-md-12">
<!--Java Script function to validate Edit Admin Page-->    
<script type="text/javascript"></script>
<!--Java Script function to validate Edit Admin Page End-->   
<!--home start-->
<?php if(@$_GET['q']==1) {

$query = "SELECT admin_id, session_key, user_name, email, admin_password FROM admin_master_list where admin_id = '$session_admin_id'";
$self_query = mysqli_query($con,$query) or die('Error');

while($row = mysqli_fetch_array($self_query)) {
        $aid = $row['admin_id'];
        $session_key = $row['session_key'];
	$user_aname = $row['user_name'];
	$email = $row['email'];
	$admin_password = $row['admin_password'];
}

echo  '<div class= "col-md-11 panel panel-primary">       
       <div class="panel-heading" align = "center" style="color:#323232; font-family:"typo";font-size:24px">Edit Account</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="account_management.php?q=Aam&aid='.$aid.'" onSubmit="return validateEditAdminForm()" method="post">
               <fieldset>
         <div class="form-group col-md-6"">
             <label for="first_name"> Session Key </label>
             <input id="session_key" name="session_key" type="text" class="form-control" value = "'.$session_key.'" readonly/> 
         </div> 
             <div class="form-group col-md-6">
             <label  for="category"> Email </label>
             <input id="email" name="email" type="text" class="form-control" value = "'.$email.'" readonly /> </div>
        <div class="form-group col-md-6">
        <label for="user_name">Username</label>
        <input id="username" name ="username" type="text" class="form-control input-md" value = "'.$user_aname.'" />
        </div>
     <div class="form-group col-md-6">
  <label for="password">Password</label>
   <input id="password" name="password"  class="form-control input-md" type="password" value = "'.$admin_password.'" />
   <div class="form-helper" style="color:#202020; font-family:"typo";font-size:12px">Provide a password that is between 5 to 25 characters long</div>
    </div> </div>
                  </fieldset>
                        
                          <button type="submit" class="btn btn-primary">SAVE</button>
                        </div>
                   </form>';


}

?>
<!-- End of Home -->
<script src="js/Validuserform.js" type="text/javascript"></script>
<!-- Create User Account -->
<?php if(@$_GET['q']==2) {
    
    echo  '<div class= "col-md-11 panel panel-primary">       
       <div class="panel-heading" align = "center" style="color:#FFFFFF"; font-family:"typo";font-size:48px">Create Account</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="account_management.php?q=createaccount" onSubmit="return validateUserForm()" method="post">
               <fieldset>
         <div class="form-group col-md-6"">
             <label for="email"> Email </label>
             <input id="uemail" name="uemail" type="text" class="form-control" placeholder = "Input Email"/> 
         </div> 
             <div class="form-group col-md-6">
             <label  for="category"> Category </label>
             <select id="ucategory" name="ucategory" class="form-control input-md">
                <option value="yes">STUDENT ACCOUNT</option>
                <option value="no">TEACHER ACCOUNT</option> </select> </div>    
        <div class="form-group col-md-6">
        <label for="ufirstname">First Name</label>
        <input id="ufirstname" name ="ufirstname" type="text" class="form-control" placeholder = "Input First Name" />
        </div>
        <div class="form-group col-md-6">
        <label for="ulastname">Last Name</label>
        <input id="ulastname" name ="ulastname" type="text" class="form-control" placeholder = "Input Last Name" /> </div>
        <div class="form-group row col-md-6">
         <div class= "col-sm-12">
             <label  class="form-label"  for="umobno">Mobile Number</label> </div>
        <div class= "col-md-1">
            <p class="form-control-static" align = "right">+63</p></div>
        <div class= "col-md-11">
            <input id="umobno" name="umobno" type="text" class="form-control" placeholder = "Input Mobile Number"/></div>
        </div>        
        <div class="form-group col-md-6">
             <label for="ugender">Gender</label>
       <select id="ugender" name="ugender" class="form-control input-md">
  <option value="O">USER (Prefer not to say) </option>
  <option value="M">MALE USER</option>
  <option value="L">FEMALE USER</option> 
  <option value="L">LBTQ+ USER</option> </select> </div>
        <div class="form-group col-md-6">
        <label for="uusername">Username</label>
        <input id="uusername" name ="uusername" type="text" class="form-control input-md" placeholder = "Input User Name" />
        </div>
     <div class="form-group col-md-6">
  <label for="upassword">Password</label>
   <input id="upassword" name="upassword"  class="form-control input-md" type="password" placeholder = "Input Password Name" />
   <div class="form-helper" style="color:#202020; font-family:"typo";font-size:12px">Provide a password that is between 8 to 20 characters long</div>
    </div> </div>
                  </fieldset>
                        
                          <button type="submit" class="btn btn-primary">SUBMIT</button>
                        </div>
                   </form>';
}
?>
<!--Creating User Accounts End-->
<!--Creating Admin Accounts End-->
<?php if(@$_GET['q']==3) {
    
    $session_key_assignment = '';
    
    $query = "select session_key from session_keys where in_use <> 'Y'";
    
    $session_keys = mysqli_query($con,$query) or die('Error');

    while($row = mysqli_fetch_array($session_keys)) {
        $session_key = $row['session_key'];
	
        $session_key_assignment = $session_key_assignment.'<option value="'.$session_key.'">'.$session_key.'</option>';
    }
    
    
   echo  '<div class= "col-md-11 panel panel-primary">       
       <div class="panel-heading" align = "center" style="color:#323232; font-family:"typo";font-size:24px">Create Admin</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="account_management.php?q=cadmin" method="post">
               <fieldset>
         <div class="form-group col-md-6"">
             <label for="session_key"> Session Key </label>
             <select id="session_key" name="session_key" class="input-md">'.$session_key_assignment.'</select> </div>
             <div class="form-group col-md-6">
             <label  for="category"> Email </label>
             <input id="email" name="email" type="text" class="form-control" placeholder="Input email" /> </div>
             <p> Link to Email? </p>
             <input type="radio" id="yes" name="to_link" value="y"><label for="yes">YES</label><br>
             <input type="radio" id="no" name="to_link" value="n"><label for="no">NO</label><br>
                        
                          <button type="submit" class="btn btn-primary">CONITNUE</button>
                        </div>
                   </form>';

}
?>

<?php if(@$_GET['q']=='3cont' && @$_GET['step']==2) {
    
    if (@$_GET['tl']=='n'){
    $session_key = @$_GET['sk'];
    
   echo  '<div class= "col-md-11 panel panel-primary">       
       <div class="panel-heading" align = "center" style="color:#323232; font-family:"typo";font-size:24px">Create Admin</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="account_management.php?q=cadmins2&tl=n" onSubmit="return validateForm()" method="post">
               <fieldset>
         <div class="form-group col-md-6"">
             <label for="session_key"> Session Key </label>
             <input id="session_key" name="session_key" type="text" class="form-control" value="'.$session_key.'" readonly/> </div>
             <div class="form-group col-md-6">
             <label  for="category"> Email </label>
             <input id="email" name="email" type="text" class="form-control" readonly /> </div>
             <div class="form-group col-md-6">
             <label  for="userid"> User ID </label>
             <input id="userid" name="userid" type="text" class="form-control" readonly /> </div>
             <div class="form-group col-md-6">
             <label  for="username"> User Name </label>
             <input id="username" name="username" type="text" class="form-control" placeholder = "Input User Name" /> </div>
             <div class="form-group col-md-6">
             <label  for="password"> Password </label>
             <input id="password" name="password" type="password" class="form-control" placeholder = "Input Password" /> </div>
             <div class="form-group col-md-6">
             <label  for="cpassword"> Confirm Password </label>
             <input id="cpassword" name="cpassword" type="password" class="form-control" placeholder = "Confirm Password" /> </div>
                        
                          <button type="submit" class="btn btn-primary">SUBMIT</button>
                        </div>
                   </form>';
    }
    else {
      $session_key = @$_GET['sk'];
      $linked_email = @$_GET['em'];
      
      $query = "select user_id, user_name, user_password  from user_masterview where email = '$linked_email' limit 1";
      $result = mysqli_query($con,$query) or die('Cannot connect to db');
        
         while ($row = mysqli_fetch_array($result)) {
             $linked_user_id = $row['user_id'];
             $linked_user_name = $row['user_name'];
             $linked_user_password = $row['user_password'];
         }
      
      echo  '<div class= "col-md-11 panel panel-primary">       
       <div class="panel-heading" align = "center" style="color:#323232; font-family:"typo";font-size:24px">Create Admin</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="account_management.php?q=cadmins2&tl=y" onSubmit="return validateAdmin()" method="post">
               <fieldset>
         <div class="form-group col-md-6"">
             <label for="session_key"> Session Key </label>
             <input id="email" name="email" type="text" class="form-control" value="'.$session_key.'" readonly/> </div>
             <div class="form-group col-md-6">
             <label  for="category"> Email </label>
             <input id="email" name="email" type="text" class="form-control" value="'.$linked_email.'" readonly /> </div>
             <div class="form-group col-md-6">
             <label  for="userid"> User ID </label>
             <input id="userid" name="userid" type="text" class="form-control" value="'.$linked_user_id.'" readonly /> </div>
             <div class="form-group col-md-6">
             <label  for="username"> User Name </label>
             <input id="username" name="username" type="text" class="form-control" value="'.$linked_user_name.'" readonly  /> </div>
             <div class="form-group col-md-6">
             <label  for="password"> Password </label>
             <input id="password" name="password" type="text" class="form-control" value="'.$linked_user_password.'" /> </div>
             <div class="form-group col-md-6">
             <label  for="cpassword"> Confirm Password </label>
             <input id="cpassword" name="cpassword" type="text" class="form-control" value="'.$linked_user_password.'" /> </div>
                        
                          <button type="submit" class="btn btn-primary">SUBMIT</button>
                        </div>
                   </form>';
    }

}
?>

<!--Creating Admin Accounts End-->
<!--View Logs Accounts End-->
<?php if(@$_GET['q']==4) {
     // Initialize Count
    $c=1;
     // Initialize Query
    $query = "select user_id, email, user_name, concat(first_name, ' ', last_name) as full_name, status from user_logs_masterview";
    $view_logs = mysqli_query($con,$query) or die('Error: Cannot view logs');
    
    echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
    <tr><td><b>No.</b></td><td><b>User ID</b></td><td><b>Full Name</b></td><td><b>Email</b></td><td><b>Status</b></td></tr>';
    
    while($row = mysqli_fetch_array($view_logs)) {
	$user_id = $row['user_id'];
	$user_name = $row['user_name'];
	$email = $row['email'];
	$full_name = $row['full_name'];
        $status = $row['status'];
        
    echo '<tr><td>'.$c++.'</td><td>'.$user_id.'</td><td>'.$full_name.'</td><td>'.$email.'</td><td>'.$status.'</td></tr>';
    }
    echo '</table></div></div>';
}
?>

<!-- Start of Managing User Accounts -->
<?php if(@$_GET['q']==5) {
    // Initialize Count
    $c=1;
    // Initialize Query
    $query = "select user_id, user_name, email, first_name, last_name, substring(mobile_no, 4, 10) as mobile_no, gender, gender_code, user_password, category from is226_project.user_masterview";
    
    $view_uact = mysqli_query($con,$query) or die('Error: Cannot view classes');
    
    echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
    <tr><td><b>No.</b></td><td><b>User Name</b></td><td><b>Full Name</b></td><td><b>Email</b></td><td></td><td></td><td></td></tr>';
    while($row = mysqli_fetch_array($view_uact)) {
	$user_id = $row['user_id'];
	$user_name = $row['user_name'];
	$email = $row['email'];
	$first_name = $row['first_name'];
        $last_name = $row['last_name'];
        $full_name = $first_name.' '.$last_name;
	$mobile_no = $row['mobile_no'];
        $gender_code = $row['gender_code'];
        $gender = $row['gender'];
        $user_password = $row['user_password'];
        $category = $row['category'];
        
        if ($gender_code == 'M'){
            $gender_display = '<option value="'.$gender_code.'">'.$gender.'</option> <option value="F">FEMALE</option> <option value="L">LBTQ+</option><option value="O">Prefer not to say</option>';
        } elseif ($gender_code == 'F'){
             $gender_display = '<option value="'.$gender_code.'">'.$gender.'</option> <option value="M">MALE</option> <option value="L">LBTQ+</option><option value="O">Prefer not to say</option>';
        } elseif ($gender_code == 'L'){
             $gender_display = '<option value="'.$gender_code.'">'.$gender.'</option> <option value="M">MALE</option> <option value="F">FEMALE</option> <option value="O">Prefer not to say</option>';
        } else {
            $gender_display = '<option value="'.$gender_code.'">'.$gender.'</option> <option value="M">MALE</option> <option value="F">FEMALE</option> <option value="L">LBTQ+</option>';
        }
        
        echo '<tr><td>'.$c++.'</td><td>'.$user_name.'</td><td>'.$full_name.'</td><td>'.$email.'</td>
            <td><b><a title="Edit" data-toggle="modal" data-target="#euser'.$user_id.'" class="pull-right btn" style="margin:0px;background:#008000"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
            <td><b><a title="Remove" href="#" class="pull-right btn" style="margin:0px;background:#ff0000"><span class="glyphicon glyphicon-remove" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>';
    
        echo '</tr><div class="modal fade" id="euser'.$user_id.'">
                    <div class="modal-dialog">
                      <div class="modal-content title1">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title title1"><span style="color:blue">Edit Account</span></h4></div>
                       <div class="modal-body">
                          <form class="form-horizontal" action="account_management.php?q=umgnt" method="POST">
                  <fieldset>
         <div class="form-group col-md-6"">
             <div class="form-group row col-md-12"> <label for="first_name"> Email </label> </div>
             <div class="form-group row col-md-12"> <input id="email" name="email" type="text" class="form-control" value = "'.$email.'" readonly/>  </div>
         </div> 
             <div class="form-group col-md-6">
             <div class="form-group row col-md-12"> <label  for="category"> Category </label> </div>
             <div class="form-group row col-md-12"> <input type="text" class="form-control" id="category" name="category" value = "'.$category.'" readonly /> </div></div>
        <div class="form-group col-md-6">
        <div class="form-group row col-md-12">
        <label for="first_name">First Name</label> </div>
        <div class="form-group row col-md-12">
        <input id="first_name" name ="first_name" type="text" class="form-control" value = "'.$first_name.'" /> </div>
        </div>
        <div class="form-group col-md-6">
        <div class="form-group row col-md-12">
        <label for="last_name">Last Name</label> </div>
        <div class="form-group row col-md-12">
        <input id="last_name" name ="last_name" type="text" class="form-control" value = "'.$last_name.'" /> </div> </div>
        <div class="form-group row col-md-6">
        <div class="form-group row col-md-12">
        <label for="mobile_no">Mobile Number</label> </div>
        <div class= "col-md-2">
            <p class="form-control-static" align = "right">+63</p> </div>
        <div class= "col-md-10">
            <input id="mobile_no" name="mobile_no" type="text" class="form-control" value = "'.$mobile_no.'"/></div>
        </div>
        <div class="form-group col-md-6">
        <div class="form-group row col-md-12"> <label for="gender">Gender</label> </div>
       <div class="form-group row col-md-12"> <select id="gender" name="gender" class="form-control input-md"> '.$gender_display.'</select> </div> </div>
        <div class="form-group col-md-6">
        <div class="form-group row col-md-12"> <label for="user_name">Username</label> </div>
        <div class="form-group row col-md-12"> <input id="user_name" name ="user_name" type="text" class="form-control input-md" value = "'.$user_name.'" /> </div>
        </div>
     <div class="form-group col-md-6">
    <div class="form-group row col-md-12"> <label for="password">Password</label> </div>
   <div class="form-group row col-md-12"> <input id="password" name="password"  class="form-control input-md" type="text" value = "'.$user_password.'" /> </div>
    </div>

		</div><div class="modal-footer">
		<button type="submit" class="btn btn-primary" >SAVE</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                   </form>
			</div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->';
        
        
        }
        $c=0;
        echo '</table></div></div>';

}
?>
<!--Manage Managing User Accounts End-->
<!--Manage Managing Admin Accounts End-->
<?php if(@$_GET['q']==6) {
    // Initialize Count
    $c=1;
    // Initialize Query
    $query = "select admin_id, user_name, email, admin_password, session_id, session_key, connected_to_session_key, connected_to_user from admin_master_list";
    
    $view_aact = mysqli_query($con,$query) or die('Error: Cannot view admin accounts');
    
    echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
    <tr><td><b>No.</b></td><td><b>User Name</b></td><td><b>Session Key</b></td><td><b>Email</b></td><td></td><td></td><td></td><td></td><td></td></tr>';
    while($row = mysqli_fetch_array($view_aact)) {
	$session_key = $row['session_key'];
	$admin_id = $row['admin_id'];
        $admin_password = $row['admin_password'];
	$email = $row['email'];
	$auser_name = $row['user_name'];
        $connected_to_session_key = $row['connected_to_session_key'];
        $connected_to_user = $row['connected_to_user'];
	$email = $row['email'];
        $session_id = $row['session_id'];
        
        echo '<tr><td>'.$c++.'</td><td>'.$auser_name.'</td><td>'.$session_key.'</td><td>'.$email.'</td>';
            
        if ($connected_to_session_key == 'Y' && $connected_to_user == 'Y'){
        echo'<td><b><a title="Edit Admin Account" data-toggle="modal" data-target="#eadmin'.$admin_id.'" class="pull-right btn" style="margin:0px;background:#008000"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
            <td><b><a title="Unlink Session Key" href="account_management.php?q=admmgnt&opt=rmvsesh&seshid='.$session_id.'" class="pull-right btn" style="margin:0px;background:#808080"><span class="glyphicon glyphicon-off" aria-hidden="true" style="color:red"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
            <td><b><a title="Unlink User Account"  href="account_management.php?q=admmgnt&opt=rmvuser&aid='.$admin_id.'&lkem='.$email.'" class="pull-right btn" style="margin:0px;background:#808080"><span class="glyphicon glyphicon-download-alt" aria-hidden="true" style="color:red"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>    
            <td><b><a title="Remove" href="account_management.php?q=admmgnt&opt=rmv&aid='.$admin_id.'" class="pull-right btn" style="margin:0px;background:#ff0000"><span class="glyphicon glyphicon-remove" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>';
        } else if ($connected_to_session_key == 'Y' && $connected_to_user == 'N'){
         echo'<td><b><a title="Edit Admin Account" data-toggle="modal" data-target="#eadmin'.$admin_id.'" class="pull-right btn" style="margin:0px;background:#008000"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
            <td><b><a title="Unlink Session Key" href="account_management.php?q=admmgnt&opt=rmvsesh&seshid='.$session_id.'" class="pull-right btn" style="margin:0px;background:#808080"><span class="glyphicon glyphicon-off" aria-hidden="true" style="color:red"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
            <td><b><a title="Link to User Account" data-toggle="modal" data-target="#linkuser'.$admin_id.'" class="pull-right btn" style="margin:0px;background:#FFFF00"><span class="glyphicon glyphicon-user" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>    
            <td><b><a title="Remove" href="account_management.php?q=admmgnt&opt=rmv&aid='.$admin_id.'" class="pull-right btn" style="margin:0px;background:#ff0000"><span class="glyphicon glyphicon-remove" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>';   
        } else if ($connected_to_session_key == 'N' && $connected_to_user == 'Y') {
         echo'<td><b><a title="Edit Admin Account" data-toggle="modal" data-target="#eadmin'.$admin_id.'" class="pull-right btn" style="margin:0px;background:#008000"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
            <td><b><a title="Link to Session Key" data-toggle="modal" data-target="#eadminsesh'.$admin_id.'" class="pull-right btn" style="margin:0px;background:#0000FF"><span class="glyphicon glyphicon-link" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
            <td><b><a title="Unlink User Account"  href="account_management.php?q=admmgnt&opt=rmvuser&aid='.$admin_id.'&lkem='.$email.'" class="pull-right btn" style="margin:0px;background:#808080"><span class="glyphicon glyphicon-download-alt" aria-hidden="true" style="color:red"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>  
            <td><b><a title="Remove" href="account_management.php?q=admmgnt&opt=rmv&aid='.$admin_id.'" class="pull-right btn" style="margin:0px;background:#ff0000"><span class="glyphicon glyphicon-remove" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>';               
        } else {
         echo '<td><b><a title="Edit Admin Account" data-toggle="modal" data-target="#eadmin'.$admin_id.'" class="pull-right btn" style="margin:0px;background:#008000"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
            <td><b><a title="Link to Session Key" data-toggle="modal" data-target="#eadminsesh'.$admin_id.'" class="pull-right btn" style="margin:0px;background:#0000FF"><span class="glyphicon glyphicon-link" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
            <td><b><a title="Link to User Account" data-toggle="modal" data-target="#linkuser'.$admin_id.'" class="pull-right btn" style="margin:0px;background:#FFFF00"><span class="glyphicon glyphicon-user" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>    
            <td><b><a title="Remove" href="account_management.php?q=admmgnt&opt=rmv&aid='.$admin_id.'" class="pull-right btn" style="margin:0px;background:#ff0000"><span class="glyphicon glyphicon-remove" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>';    
        }
        
         
//Admin Account Edit
        echo '</tr><div class="modal fade" id="eadmin'.$admin_id.'">
                    <div class="modal-dialog">
                      <div class="modal-content title1">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title title1"><span style="color:blue">Edit Account</span></h4></div>
                       <div class="modal-body">
                          <form class="form-horizontal" action="account_management.php?q=admmgnt&opt=edita&aid='.$admin_id.'" method="POST">
                  <fieldset>
         <div class="form-group col-md-6"">
             <div class="form-group row col-md-12"> <label for="username"> User Name </label> </div>
             <div class="form-group row col-md-12"> <input id="username" name="username" type="text" class="form-control" value = "'.$auser_name.'"/>  </div>
         </div>
                  <div class="form-group col-md-6"">
             <div class="form-group row col-md-12"> <label for="password"> Password </label> </div>
             <div class="form-group row col-md-12"> <input id="password" name="password" type="text" class="form-control" value = "'.$admin_password.'"/>  </div>
         </div>

		</div><div class="modal-footer">
		<button type="submit" class="btn btn-primary" >SAVE</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                   </form>
			</div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->';
    //Link to session
    
    $query2 = "select session_key from session_keys where in_use <> 'Y'";
    
    $session_keys = mysqli_query($con,$query2) or die('Error');
    
    $num_rows = mysqli_num_rows($session_keys);
    
    if($num_rows > 0){
    $session_key_assignment = '';
    
    while($row = mysqli_fetch_array($session_keys)) {
        $session_key_opt = $row['session_key'];
	
        $session_key_assignment = $session_key_assignment.'<option value="'.$session_key_opt.'">'.$session_key_opt.'</option>';
    }
    $session_key_assingment_statement = '<select id="session_key" name="session_key" class="form-control input-md">'.$session_key_assignment.'</select>';
    }
    else {
    $session_key_assingment_statement = '<p> No Session Key detected. Plese generate a new one to proceed. </p>';  
    }
  
    echo '</tr><div class="modal fade" id="eadminsesh'.$admin_id.'">
                    <div class="modal-dialog">
                      <div class="modal-content title1">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title title1"><span style="color:blue">Link to Session </span></h4></div>
                       <div class="modal-body">
                          <form class="form-horizontal" action="account_management.php?q=admmgnt&opt=linksesh&uname='.$auser_name.'" method="POST">
                  <fieldset>
            <div class="form-group col-md-12"">
             <label for="session_key"> Session Key </label>
             <div class="form-group row col-md-12">'.$session_key_assingment_statement.'</div>
         </div>

		</div><div class="modal-footer">';
    
    if ($num_rows > 0){      
	echo	'<button type="submit" class="btn btn-primary" >LINK</button>';
    }
    
    echo    '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                   </form>
			</div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->';
    

    echo '</tr><div class="modal fade" id="linkuser'.$admin_id.'">
                    <div class="modal-dialog">
                      <div class="modal-content title1">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title title1"><span style="color:blue">Link to User Account </span></h4></div>
                       <div class="modal-body">
                          <form class="form-horizontal" action="account_management.php?q=admmgnt&opt=linkuser&aid='.$admin_id.'" method="POST">
                  <fieldset>
         <div class="form-group col-md-12"">
             <div class="form-group row col-md-12"> <label for="email"> User Name </label> </div>
             <div class="form-group row col-md-12"> <input id="email" name="email" type="text" class="form-control" placeholder = "Input Email"/>  </div>
         </div>

		</div><div class="modal-footer">
		<button type="submit" class="btn btn-primary" >LINK</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                   </form>
			</div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->';
        
        }
        $c=0;
        echo '</table></div></div>';

}
?>
<!--Manage Managing User Accounts End-->
<?php if(@$_GET['q']==7) {
$q = @$_GET['q'];


$query = "select distinct feedback_id, curr_sender_user_id, email_sender, full_name_of_sender, sender_category, feedback_status, subject, date_created, time_created, coalesce (current_message,message) as message from is226_project.feedback_master_table
	where email_recpient = 'admingrp@grp.com' and feedback_status in ('S', 'R', 'A', 'E', 'Q') order by date_created and time_created desc";

$result = mysqli_query($con,$query) or die('Error');


echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
<tr><td><b>No.</b></td><td><b>Subject</b></td><td><b>Sender\'s Email</b></td><td><b>Sender\'s Full Name</b></td><td><b>Account Category</b></td><td><b>Date</b></td><td><b>Time</b></td><td></td></tr>';
$c=1;
while($row = mysqli_fetch_array($result)) {
        $id = $row['feedback_id'];
        $stat = $row ['feedback_status'];
        $message = $row['message'];
	$s_email = $row['email_sender'];
        $sender_code = $row['curr_sender_user_id'];
        $s_fname = $row['full_name_of_sender'];
        $s_category = $row['sender_category'];
        $subject = $row['subject'];
        $date = date("d-m-Y",strtotime( $row['date_created']));
        $time = $row['time_created'];

	echo '<tr><td>'.$c++.'</td><td><a title="Click to Open Feedback" data-toggle="modal" data-target="#message'.$id.'">'.$subject.'</a></td><td>'.$s_email.'</td><td>'.$s_fname.'</td><td>'.$s_category.'</td><td>'.$date.'</td><td>'.$time.'</td>';
        
        if ($stat == "S" || $stat == "R") {
	echo '<td><a title="Open Feedback" data-toggle="modal" data-target="#message'.$id.'"><b><span class="glyphicon glyphicon-envelope" aria-hidden="true" disabled></span></b></a></td>';
        }
        else {
        echo '<td><a title="Reply to Feedback" data-toggle="modal" data-target="#message'.$id.'"  ><b><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span></b></a></td>';    
        }
        
        if  ($stat == "S" || $stat == "R") {  
        echo '</tr><div class="modal fade" id="message'.$id.'">
                    <div class="modal-dialog">
                      <div class="modal-content title1">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title title1"><span style="color:blue">Messages</span></h4></div>
                       <div class="modal-body">
                          <form class="form-horizontal" action="#" method="POST">
                  <fieldset>
                  <!-- From -->
                 <div>
                  <div class="form-group col-md-2">
                    <label class=" control-label" for="semail">From:</label>  
                  </div>
                  <div class="form-group col-md-10">
                    <input id="semail" name="semail" class="form-control" type="Text" value = "'.$s_email.'" readonly/>
                   </div>
                  </div>
                  
                  <!-- Subject-->
                  <div>
                  <div class="form-group col-md-2">
                    <label class=" control-label" for="subject">Subject:</label>  
                  </div>
                  <div class="form-group col-md-10">
                    <input id="subject" name="subject" class="form-control" type="Text" value = "'.$subject.'" readonly/>
                   </div>
                  </div>
                  
                   <!-- Message-->
                  <div>
                    <label class=" control-label" for="f_message"> Message </label> 
                    <textarea name="comment" rows="5" cols="65" readonly>'.$message.'</textarea>
                  </div>
                  </fieldset>
                        </div><div class="modal-footer">
                          <button type="submit" class="btn btn-primary" formaction="admin_feedback.php?q=feedback&act=ack&fid='.$id.'">ACKNOWLEDGE</button>
                          <button type="submit" class="btn btn-primary" formaction="admin_feedback.php?q=feedback&act=dec&fid='.$id.'">DECLINE</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                   </form>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->';
        } else if ($stat == "A" || $stat == "E") {
            {   
                    echo '</tr><div class="modal fade" id="message'.$id.'">
                    <div class="modal-dialog">
                      <div class="modal-content title1">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title title1"><span style="color:blue">Messages</span></h4></div>
                       <div class="modal-body">
                          <form class="form-horizontal" action="admin_feedback.php?q=replyfeedback&fid='.$id.'&rc='.$sender_code.'" method="POST">
                  <fieldset>
                  <!-- From -->
                 <div>
                  <div class="form-group col-md-2">
                    <label class=" control-label" for="semail">From:</label>  
                  </div>
                  <div class="form-group col-md-10">
                    <input id="semail" name="semail" class="form-control" type="Text" value = "'.$s_email.'" readonly/>
                   </div>
                  </div>
                  
                  <!-- Subject-->
                  <div>
                  <div class="form-group col-md-2">
                    <label class=" control-label" for="subject">Subject:</label>  
                  </div>
                  <div class="form-group col-md-10">
                    <input id="subject" name="subject" class="form-control" type="Text" value = "'.$subject.'" readonly/>
                   </div>
                  </div>
                  
                   <!-- Message-->
                  <div>
                    <label class=" control-label" for="f_message"> Message </label> 
                    <textarea name="f_message" rows="5" cols="65" readonly>'.$message.'</textarea>
                  </div>
                  <!-- Reply -->
                  <div>
                  <label class="control-label" for="f_reply"> REPLY </label> 
                        <textarea name="f_reply" rows="5" cols="65"></textarea>
                    </div>
                  </fieldset> <div class="modal-footer">
                          <button type="submit" class="btn btn-primary">REPLY</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                   </form>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->';
        }
        }
}
echo '</table></div></div>';
}
?>
<!--feedback closed Home -->

</div></div></div></div>
<!--Footer start-->

</body>
</html>

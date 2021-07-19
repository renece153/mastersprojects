<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>IS226 - PROJECT </title>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>
 
 	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-maxlength/1.7.0/bootstrap-maxlength.min.js"></script

  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
 	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'/>
<?php if(@$_GET['w'])
{echo'<script>alert("'.@$_GET['w'].'");</script>';}
?>
<script src="form_validation_file.js" type="text/javascript"></script>         
</head>
    <body>
<div class="header">
<div class="row">
<div class="col-md-9" >
<span class="logo">EXAM MODULE</span></div>
<div class="col-md-1">
<a href="#" onclick="window.location='index.php'" class="pull-right btn btn-primary sub"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;<span class="title1" ><b>Home</b></span></a></div>
<div class="col-md-1">
<a href="#" onclick="window.location='knowyouruser.php'" class="pull-right btn btn-primary sub"><span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp;<span class="title1" ><b>SignUp</b></span></a></div>
<div class="col-md-1">
<a href="#" class="pull-right btn btn-primary sub" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;<span class="title1"><b>SignIn</b></span></a></div></div>
<!--sign in modal start-->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title title1"><span style="color:orange">Log In</span></h4>
      </div>
     <div class="modal-body">
        <form class="form-row" action="login.php?q=index.php" method="POST">
<fieldset>
         
<!-- Email Input-->
<div class="form-group col-md-6">
  <label class=" control-label" for="email"> Email </label>  
  <div class="col-md-0">
  <input id="email" name="email" placeholder="Enter your Registered Email" maxlength="50" class="form-control input-md" type="email"/>
    
  </div>
</div>

<!-- Password input-->
<div class="form-group col-md-6">
  <label class=" control-label" for="password"> Password </label>
  <input id="password" name="password" placeholder="Enter your Password" maxlength="50" class="form-control input-md" type="password"/>
  <div class="col-md-0">
    
  </div>
</div>

<!-- I am a-->
<div class="form-group col-md-8 ">
  <label class="control-label" for="category"> I am a</label>
  <div class="col-md-0">
    <select id="category" name="category" class="form-control input-md">
  <option value="yes">STUDENT</option>
  <option value="no">TEACHER</option> </select> </div>
  </div>

<!-- Remember Me -->
<div class="checkbox col-md-4">
    <label class="control-label" for="remember"> Remember me </label>
    <div>
        <label><input type="checkbox"/>Yes </label> </div>
  </div>
<div class="checkbox col-md-12">
    <a title="Click to Open Administrator Log in" data-toggle="modal" data-target="#login" data-dismiss="modal"> <p>Are you an administrator? </p> </a>
  </div>
</fieldset>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Log in</button>
      </div>
 </form>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--sign in to admin modal closed-->

</div><!--header row closed-->
</div>

<div class="bg1">
<div class="row">
<div class= "col-xs-0 col-xs-offset-2">
<div class= "col-md-9 panel panel-primary">
    <div class="panel-heading" align = "center" style="color:#d2d2d2; font-family:'typo';font-size:24px">User Information Form</div>
    <div class="panel-body">
 <form class="form-row" name="form" action="sign.php?q=account.php" onSubmit="return validateSignUpForm()" method="post">
     <fieldset>
         <p style="color:#202020; font-family:'typo';font-size:24px" class="header1"> Greetings! User, <br> Please fill out the form below to access your account</p>
         <div class="form-group col-md-6"">
             <label for="ufirstname"> First Name </label>
             <input id="ufirstname" name="ufirstname" type="text" class="form-control" maxlength="50" placeholder="Your First Name"/> 
         </div> 
             <div class="form-group col-md-6">
             <label  for="ulastname"> Last Name </label>
             <input type="text" class="form-control" id="ulastname" name="ulastname" maxlength="50" placeholder="Your Last Name"/> </div>
        <div class="form-group col-md-6">
        <label for="email">Email Address</label>
        <input id="uemail" name ="uemail" type="uemail" class="form-control"   maxlength="50" placeholder="Your email"/>
        </div>
        <div class="form-group row col-md-6">
         <div class= "col-sm-12">
             <label  class="form-label"  for="umobno">Mobile Number</label> </div>
        <div class= "col-md-1">
            <p class="form-control-static" align = "right">+63</p></div>
        <div class= "col-md-11">
            <input id="umobno" name="umobno" type="Tel" class="form-control"  maxlength="10" placeholder="Your Mobile No"/> </div>
        </div>        
        <div class="form-group col-md-4">
             <label for="gender"> I am a/an </label>
       <select id="gender" name="gender" class="form-control input-md">
  <option value="O">USER (Prefer not to say) </option>
  <option value="M">MALE USER</option>
  <option value="L">FEMALE USER</option> 
  <option value="L">LBTQ+ USER</option> </select> </div>
        <div class="form-group col-md-3">
             <label for="category"> who needs a </label>
       <select id="category" name="category" class="form-control input-md">
  <option value="yes">STUDENT ACCOUNT</option>
  <option value="no">TEACHER ACCOUNT</option> </select> </div>
        <div class="form-group col-md-5">
        <label for="uusername">with username</label>
        <input id="uusername" name ="uusername" type="text" class="form-control input-md"  maxlength="20" placeholder="Prefered to be Called"/>
         <div class="form-helper" style="color:#202020; font-family:'typo';font-size:12px">Kindly limit it to letters, numbers, underscores (_) and dashes (-)</div>
        </div>
         
     <div class="form-group col-md-6">
  <label for="password">Password</label>
   <input id="upassword" name="upassword" placeholder="Enter your password" class="form-control input-md" maxlength="20" type="password"/>
   <div class="form-helper" style="color:#202020; font-family:'typo';font-size:12px">Provide a password that is between 5 to 25 characters long</div>
    </div>

<div class="form-group col-md-6">
  <label for="password">Confirm Password</label>
    <input id="ucpassword" name="ucpassword" placeholder="Confirm Your Password" class="form-control input-md" maxlength="20" type="password"/></div>
    
<?php if(@$_GET['q7'])
{ echo'<p style="color:red;font-size:15px;">'.@$_GET['q7'];}?>
<!-- Button -->
<div class="form-group">
  <label class="col-md-12 control-label" for=""></label>
  <div class="col-md-12"> 
    <input  type="submit" class="sub" value="SIGN UP" class="btn btn-info"/>
  </div>
</div>
             
    </fieldset>
</form>
</div>   
        <script type="text/javascript">
		$('input').maxlength({
                  alwaysShow: true,
	          threshold: 10,
	          warningClass: "label label-success",
	          limitReachedClass: "label label-danger",
	          separator: ' out of ',
	          preText: 'You have written ',
	          postText: ' chars.',
	          validate: true
        });
	</script>
        
        
    </div>
</div> </div> </div>
</body>
<!--Footer start-->
<div class="row footer">
<!--Modal for admin login-->
<div class="modal fade" id="login">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"><span style="color:orange;font-family:'typo' ">ADMINISTRATOR LOGIN</span></h4>
      </div>
      <div class="modal-body title1">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form role="form" method="post" action="admin.php?q=index.php">
<div class="form-group">
<input type="text" name="signinparam" maxlength="50"  placeholder="Admin user name" class="form-control"/> 
</div>
<div class="form-group">
<input type="password" name="password" maxlength="50" placeholder="Password" class="form-control"/>
</div>
<div class="form-group" align="center">
<input type="submit" name="login" value="Login" class="btn btn-primary" />
</div>
</form>
</div><div class="col-md-3"></div></div>
      </div>
      <!--<div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>-->
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
 </html>
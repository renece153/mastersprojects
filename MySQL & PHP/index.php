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

  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
 	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
<?php if(@$_GET['w'])
{echo'<script>alert("'.@$_GET['w'].'");</script>';}
?>


</head>

<body>
<div class="header">
<div class="row">
<div class="col-md-10" >
<span class="logo">EXAM MODULE</span></div>
<div class="col-md-1">
<a href="#" onclick="window.location='knowyouruser.php'" class="pull-right btn btn-primary sub"><span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp;<span class="title1"><b>SignUp</b></span></a></div>
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
  <input id="email" name="email" placeholder="Enter your Registered Email" class="form-control input-md" type="email"/>
    
  </div>
</div>

<!-- Password input-->
<div class="form-group col-md-6">
  <label class=" control-label" for="password"> Password </label>
  <input id="password" name="password" placeholder="Enter your Password" class="form-control input-md" type="password"/>
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

<div class="bg1">
<div class="col-md-7"></div>
</div><!--container end-->

<!--Footer start-->
<div class="row footer">
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
<input type="text" name="signinparam" maxlength="20"  placeholder="Admin user name" class="form-control"/> 
</div>
<div class="form-group">
<input type="password" name="password" maxlength="15" placeholder="Password" class="form-control"/>
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
<!--footer end-->


</body>
</html>

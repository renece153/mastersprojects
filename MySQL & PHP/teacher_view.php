<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>IS226 - PROJECT (Teacher) </title>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>

  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
 	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'/>
<script src="js/misc_validation_file.js"  type="text/javascript"></script>
<script src="js/Validateuserform.js"  type="text/javascript"></script>

<script>
$(function () {
    $(document).on( 'scroll', function(){
        console.log('scroll top : ' + $(window).scrollTop());
        if($(window).scrollTop()>=$(".logo").height())
        {
             $(".navbar").addClass("navbar-fixed-top");
        }

        if($(window).scrollTop()<$(".logo").height())
        {
             $(".navbar").removeClass("navbar-fixed-top");
        }
    });
});</script>
            
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script> 
 var editRow = null;

    function productDisplay(ctl) {
      editRow = $(ctl).parents("tr");
      var cols = editRow.children("td");
      
      $("#ccode").val($(cols[1]).text());
      $("#cname").val($(cols[2]).text());
      $("#desc").val($(cols[3]).text());
      $("#size").val($(cols[4]).text());

    }
    
</script>
<!--<script type="text/javascript">
//    function ShowHideDiv() {
//        var accept = document.getElementById("accept");
//        var showopt1 = document.getElementById("optionMC");
//        var showopt2 = document.getElementById("optionTF");
//        var showopt3 = document.getElementById("optionSA");
//        var dvnumber = document.getElementById("dvnumber");
//        showopt1.style.display = accept.checked ? "block" : "none";
//        showopt2.style.display = accept.checked ? "block" : "none";
//        showopt3.style.display = accept.checked ? "block" : "none";
//        dvnumber.style.display = accept.checked ? "block" : "none";
//    }

        $(document).click(function(e)) {
            if(e.target.value == 'MC') {
                $("#titems").prop("readonly", false);
            }}
</script>    -->
</head>

<body  style="background:#eee;">
<div class="header">
<div class="row">
<div class="col-lg-6">
<span class="logo">Exam Module</span></div>
<?php
 include_once 'dbConnection.php';
session_start();
$uemail=$_SESSION['email'];
  if(!(isset($_SESSION['email']))){
header("location:index.php");
}
else
{
$name = $_SESSION['user_name'];;
include_once 'dbConnection.php';
echo '<span class="pull-right top title1" ><span class="log1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Hello,</span> <a href="teacher_view.php?q=1" class="log log1">'.$name;
}?>

</div></div>
<!-- admin start-->

<!--navigation menu-->
<nav class="navbar navbar-default title1">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" disable><b>Dashboard</b></a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li <?php if(@$_GET['q']==1) echo'class="active"'; ?> ><a href="teacher_view.php?q=1"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;Home<span class="sr-only">(current)</span></a></li>
        <li class="dropdown <?php if(@$_GET['q']== 2 || @$_GET['q']== 3 || @$_GET['q']== 4) echo'active"'; ?>">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Classes<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="teacher_view.php?q=2"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;Create your Classes</a></li>
            <li><a href="teacher_view.php?q=3"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;Manage your Classes</a></li>
            <li><a href="teacher_view.php?q=4"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;Manage Invites</a></li>
            </ul>
        <li class="dropdown <?php if(@$_GET['q']== 5 || @$_GET['q']== 6) echo'active"'; ?>">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Exams<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="teacher_view.php?q=5"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;Add Exam</a></li>
<!--            <li><a href="teacher_view.php?q=6"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;Edit Exam</a></li>-->
            <li><a href="teacher_view.php?q=6"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>&nbsp;Remove Exam</a></li> </ul>
        <li <?php if(@$_GET['q']==7) echo'class="active"'; ?>><a href="teacher_view.php?q=7"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>&nbsp;Practice</a></li>  
        <li <?php if(@$_GET['q']==8) echo'class="active"'; ?>><a href="teacher_view.php?q=8"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>&nbsp;History</a></li>
        <li class="dropdown <?php if(@$_GET['q']== 9 || @$_GET['q']== 10 || @$_GET['q']== 11) echo'active"'; ?>">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Feedback<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="teacher_view.php?q=9"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;Create Feedback</a></li>
            <li><a href="teacher_view.php?q=10"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span>&nbsp;Student's Feedback</a></li>
            <li><a href="teacher_view.php?q=11"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>&nbsp;Manage Your Feedback</a></li>
            </ul>
<!--	<li <?php if(@$_GET['q']==9) echo'class="active"'; ?>><a href="teacher_view.php?q=9"><span class="glyphicon glyphicon-signal" aria-hidden="true"></span>&nbsp;Analysis</a></li>
        <li <?php if(@$_GET['q']==10) echo'class="active"'; ?>><a href="teacher_view.php?q=10"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span>&nbsp;Feedback</a></li>
        <li <?php if(@$_GET['q']==11) echo'class="active"'; ?>><a href="teacher_view.php?q=11"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>&nbsp;FAQs</a></li>-->
        </li><li class="pull-right"> <a href="logout.php?q=index.php"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Log Out</a></li>
		
      </ul>
          </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!--navigation menu closed-->
<div class="container"><!--container start-->
<div class="row">
<div class="col-md-12">
<!--home start-->

<?php if(@$_GET['q']==1) {

$query = "select user_id, user_name, email, first_name, last_name, substring(mobile_no, 4, 10) as mobile_no, gender, gender_code, user_password, category from is226_project.user_masterview where email = '$uemail'";
$self_query = mysqli_query($con,$query) or die('Error');

$c=1;
while($row = mysqli_fetch_array($self_query)) {
        $user_id = $row['user_id'];
	$user_name = $row['user_name'];
	$email = $row['email'];
	$first_name = $row['first_name'];
        $last_name = $row['last_name'];
        $mobile_no = $row['mobile_no'];
	$user_password = $row['user_password'];
        $category = $row['category'];
        $gender = $row['gender'];
        $gender_code = $row['gender_code'];
        
        if ($gender_code == 'M'){
            $gender_display = '<option value="'.$gender_code.'">'.$gender.'</option> <option value="F">FEMALE</option> <option value="L">LBTQ+</option><option value="O">Prefer not to say</option>';
        } elseif ($gender_code == 'F'){
             $gender_display = '<option value="'.$gender_code.'">'.$gender.'</option> <option value="M">MALE</option> <option value="L">LBTQ+</option><option value="O">Prefer not to say</option>';
        } elseif ($gender_code == 'L'){
             $gender_display = '<option value="'.$gender_code.'">'.$gender.'</option> <option value="M">MALE</option> <option value="F">FEMALE</option> <option value="O">Prefer not to say</option>';
        } else {
            $gender_display = '<option value="'.$gender_code.'">'.$gender.'</option> <option value="M">MALE</option> <option value="F">FEMALE</option> <option value="L">LBTQ+</option>';
        }
}

echo  '<div class= "col-md-11 panel panel-primary">       
       <div class="panel-heading" align = "center" style="color:#323232; font-family:"typo";font-size:24px">Edit Account</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="account_management.php?q=Tam" onSubmit = "return validateUserForm()" method="post">
               <fieldset>
         <div class="form-group col-md-6"">
             <label for="first_name"> Email </label>
             <input id="uemail" name="uemail" type="text" class="form-control" value = "'.$email.'" readonly/> 
         </div> 
             <div class="form-group col-md-6">
             <label  for="category"> Category </label>
             <input type="text" class="form-control" id="category" name="category" value = "'.$category.'" readonly /> </div>
        <div class="form-group col-md-6">
        <label for="first_name">First Name</label>
        <input id="ufirstname" name ="ufirstname" type="text" class="form-control" value = "'.$first_name.'" />
        </div>
        <div class="form-group col-md-6">
        <label for="ulastname">Last Name</label>
        <input id="ulastname" name ="ulastname" type="text" class="form-control" value = "'.$last_name.'" /> </div>
        <div class="form-group row col-md-6">
         <div class= "col-sm-12">
             <label  class="form-label"  for="umobno">Mobile Number</label> </div>
        <div class= "col-md-1">
            <p class="form-control-static" align = "right">+63</p></div>
        <div class= "col-md-11">
            <input id="umobno" name="umobno" type="text" class="form-control" value = "'.$mobile_no.'"/></div>
        </div>        
        <div class="form-group col-md-6">
             <label for="gender">Gender</label>
       <select id="gender" name="gender" class="form-control input-md"> '.$gender_display.'</select> </div>
        <div class="form-group col-md-6">
        <label for="uusername">Username</label>
        <input id="uusername" name ="uusername" type="text" class="form-control input-md" value = "'.$user_name.'" />
        </div>
     <div class="form-group col-md-6">
  <label for="upassword">Password</label>
   <input id="upassword" name="upassword"  class="form-control input-md" type="password" value = "'.$user_password.'" />
   <div class="form-helper" style="color:#202020; font-family:"typo";font-size:12px">Provide a password that is between 8 to 20 characters long</div>
    </div> </div>
                  </fieldset>
                        
                          <button type="submit" class="btn btn-primary">SAVE</button>
                        </div>
                   </form>';


}

?>
<!--home closed-->

<script src="js/validateClassForm.js"></script>
<!--Create Class start-->
<?php if(@$_GET['q']==2) {
   echo '
       <div class= "col-md-11 panel panel-success">       
       <div class="panel-heading" align = "center" style="color:#323232; font-family:"typo";font-size:24px">Create a Class</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="teacher_class_tab.php?q=newclass" onSubmit = "return ValidateClassForm()" method="post">
               <fieldset>
               <div class="form-group col-md-10">
             <label for="class_name"> Class Name </label>
             <input id="class_name" name="class_name" type="text" class="form-control" placeholder="Name of your Class"/> 
         </div> 
         <div class="form-group col-md-2">
             <label for="class_size"> Class Size </label>
             <input id="class_size" name="class_size" type="number" class="form-control" min ="5" max = "40" placeholder="5"/> 
         </div> 
         <div class="form-group col-md-12">
         <label for="class_description"> Description </label>
         <textarea id="class_description" name="class_description" rows="3" cols="130" placeholder="Add your description of your class here" ></textarea>
         </div>
         
    
       <!-- Button -->
       <div class="form-group">
         <label class="col-md-12 control-label" for=""></label>
         <div class="col-md-12 col-md-offset-5"> 
           <input type="submit" value="SUBMIT" class="btn btn-info"/>
         </div>
       </div>
       
         </div>
           </fieldset>
           </form>

            </div>';
}
//} else if (@$_GET['q'])
//{echo'<p style="color:red;font-size:15px;">'.@$_GET['q'];}
?>
<!--Create Class End-->
<!--Manage Class Start-->
<script src="js/deleterecord.js"></script>
<?php if(@$_GET['q']==3) {
    // Initialize Count
    $c=1;
    // Initialize Query
    $query = "select cl.class_code, cl.class_name, cl.description, cl.size as class_size,
                COALESCE(ref_tbl.student_count, 0) as total_enrolled
                from classes cl join teachers t on t.teacher_code  = cl.teacher_code
                left join (select class_code, count(student_code) as student_count from student_class_enrollment
                where class_status = 'E'
                group by class_code) ref_tbl on ref_tbl.class_code = cl.class_code 
                where t.email = '$uemail'
                order by cl.record_creation  desc";
    $view_classes = mysqli_query($con,$query) or die('Error: Cannot view classes');
    
    echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
    <tr><td><b>No.</b></td><td><b>Class Code</b></td><td><b>Class Name</b></td><td><b>Description</b></td><td><b>Size</b></td><td><b>Enrolled</b></td><td></td><td></td></tr>';
    while($row = mysqli_fetch_array($view_classes)) {
	$class_name = $row['class_name'];
	$description = $row['description'];
	$class_size = $row['class_size'];
	$total_enrolled = $row['total_enrolled'];
	//$remaining_size = $row['remaining_size'];
        $class_code = $row['class_code'];
	$rowcount=mysqli_num_rows($view_classes);
        if($rowcount == 0){
                
                echo '<tr><td>'.$c++.'</td><td>'.$class_code.'</td><td>'.$class_name.'</td><td>'.$description.'</td><td>'.$class_size.'</td><td>'.$total_enrolled.'</td>
                <td><b><a title="Edit" href="#" data-toggle="modal" data-target="#updateModal'.$class_code.'" class="pull-right btn sub1" style="margin:0px;background:#FF0000"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;<span class="title1"><b></b></span></a></b></td>
                <td><b><a title="Delete" href="teacher_class_tab.php?q=manclass&act=2&ccode='.$class_code.'" onClick = "return showAlert_to_delete(this)" class="pull-right btn" style="margin:0px;background:#FF0000"><span class="glyphicon glyphicon-minus" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
                </tr>';
        }
        else
        {
        echo    '<tr style="color:#000000"><td>'.$c++.'</td><td>'.$class_code.'</td><td>'.$class_name.'</td><td>'.$description.'</td><td align = "center">'.$class_size.'</td><td align = "center">'.$total_enrolled.'</td>
                <td><b onclick="productDisplay(this)"><a title="Edit" data-toggle="modal" data-target="#updateModal'.$class_code.'" class="pull-right btn" style="margin:0px;background:#003300"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
                <td><b><a title="Delete"  href="teacher_class_tab.php?q=manclass&act=2&ccode='.$class_code.'" onClick = "return showAlert_to_delete(this)" class="pull-right btn" style="margin:0px;background:#FF0000"><span class="glyphicon glyphicon-minus" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>';
        echo' </tr><div class="modal fade" id="updateModal'.$class_code.'">
                    <div class="modal-dialog">
                      <div class="modal-content title1">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title title1"><span style="color:blue">Messages</span></h4></div>
                       <div class="modal-body">
                          <form class="form-horizontal" action="teacher_class_tab.php?q=manclass&act=1" method="POST">
                  <fieldset>
                  <!-- Class Code-->
                  <div>
                    <label class="control-label" for="ccode"> Class Code </label>  
                    <input id="ccode" name="ccode" class="form-control" type="Text" readonly/>
                  </div>
                  
                  <!-- Class Name-->
                  <div>
                    <label class=" control-label" for="cname"> Class Name </label>  
                    <input id="cname" name="cname" class="form-control" type="Text" />
                  </div>

                  <div>
                    <label class=" control-label" for="desc"> Description </label>  
                    <input id="desc" name="desc" max="255" class="form-control input-md" type="Text"/>
                  </div>

                  <div>
                    <label class=" control-label" for="size"> Size </label>  
                    <input id="size" name="size" min = "5" max = "40" class="form-control input-md" type="Number"/>
                  </div>
                  </fieldset>
                        </div><div class="modal-footer">
                          <button type="submit" class="btn btn-primary">Update</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                   </form>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->';
        }
    }
        $c=0;
        echo '</table></div></div>';

        }
?>
<!--Manage Class End-->
<!--Accept Invites Start-->
<script src="js/ProceedwithInvite.js"></script>
<?php if(@$_GET['q']==4) {
    // Initialize Count
    $c=1;
    // Initialize Query
    $query = "select sce_id, class_name, class_code, student_user_name, student_full_name, class_status_name from class_student_teacher_summary where class_status = 'P' and teacher_email = '$uemail'";
    $view_invites = mysqli_query($con,$query) or die('Error: Cannot view invitations');
    
     echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
    <tr><td><b>No.</b></td><td><b>Class Name</b></td><td><b>User Name</b></td><td><b>Full Name</b></td><td><b>Status</b></td><td></td><td></td></tr>';
     
     while($row = mysqli_fetch_array($view_invites)) {
	$class_name = $row['class_name'];
        $sid = $row['sce_id'];
	$student_user_name = $row['student_user_name'];
	$student_full_name = $row['student_full_name'];
	$class_status_name = $row['class_status_name'];
	$rowcount=mysqli_num_rows($view_invites);
        if($rowcount == 0){
                echo '<tr><td>'.$c++.'</td><td>'.$class_name.'</td><td>'.$student_user_name.'</td><td>'.$student_full_name.'</td><td>'.$class_status_name.'</td>
                <td><b><a href="#" onClick = "return showAlert_to_continue(this)" class="pull-right btn sub1" style="margin:0px;background:#FF0000"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Accept</b></span></a></b></td>
                <td><b><a href="#" onClick = "return showAlert_to_continue(this)" class="pull-right btn" style="margin:0px;background:#FF0000"><span class="glyphicon glyphicon-minus" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b>Decline</b></span></a></b></td>
                </tr>';
        }
        else
        {
        echo    '<tr style="color:#000000"><td>'.$c++.'</td><td>'.$class_name.'</td><td>'.$student_user_name.'</td><td>'.$student_full_name.'</td><td>'.$class_status_name.'</td>
                <td><b><a href="teacher_class_tab.php?q=manclass&act=3&sid='.$sid.'&cstatus=E" onClick = "return showAlert_to_continue(this)"  class="pull-right btn" style="margin:0px;background:#003300"><span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b>Accept</b></span></a></b></td>
                <td><b><a href="teacher_class_tab.php?q=manclass&act=3&sid='.$sid.'&cstatus=D" onClick = "return showAlert_to_continue(this)"  class="pull-right btn" style="margin:0px;background:#FF0000"><span class="glyphicon glyphicon-minus" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b>Decline</b></span></a></b></td>
                </tr>';
        }
        }
        $c=0;
        echo '</table></div></div>';

        }

?>
<!--Accept Invites End-->

    <!--Examination Tab-->

<!--Add Exam Tab->
<!--add quiz start-->
<?php
if(@$_GET['q']==5 && !(@$_GET['step']) ) {

$query = "select cl.class_code, cl.class_name, t.teacher_code, t.email, concat(class_code,': ',class_name) as class_display_name
            from classes cl inner join teachers t on t.teacher_code  = cl.teacher_code where t.email =  '$uemail'
            order by cl.class_code desc";

$fetch_classes = mysqli_query($con,$query) or die('Error: Cannot view classes');
$x = 1;
while ($row = mysqli_fetch_array($fetch_classes)) {
    $class_code = $row['class_code'];
    $class_name = $row['class_display_name'];
    
    if ($x == 1) {
    $statement = '<option value="'.$class_code.'">'.$class_name.'</option>';
    } else {
    $statement = $statement.'<option value="'.$class_code.'">'.$class_name.'</option>';    
    }
    $x++;
    }
 $x = 0;   

echo '
    <div class= "col-md-11 panel panel-success">       
       <div class="panel-heading" align = "center" style="color:#323232; font-family:"typo";font-size:24px">Create a Quiz</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="teacher_exam_tab.php?q=addquiz" onSubmit="return ValidateExamForm()" method="post">
               <fieldset>

<!-- Quiz Title-->
<div class="form-group col-md-5">
  <label class="control-label" for="title">Quiz Title</label>  
  <input id="title" name="title" placeholder="Enter Quiz title" class="form-control input-md" type="text"> 
</div>

<!-- Class-->
<div class="form-group col-md-5">
  <label class="control-label" for="class"> Class Name</label> <div class="col-md-12">
  <select id="class" name="class" class="input-md">'.$statement.'</select>
</div> </div>

<!-- Time Limit-->
<div class="form-group col-md-2">
  <label class="col-md-12 control-label" for="timelimit">Time Limit</label>  
  <input id="timelimit" name="timelimit" placeholder="in Minutes" class="form-control input-md" min="0" type="number">
</div>

<!-- Quiz Description-->
<div class="form-group col-md-12">
  <label class="col-md-12 control-label" for="qdesc">Description</label>  
  <input id="qdesc" name="qdesc" placeholder="Brief Description of the Quiz" class="form-control input-md" type="text">
</div>

<!-- Quiz Options -->
<div class="form-group col-md-8">
<span>What type of Exam do you want to do?</span> </br>
<div class="form-group">
        <label id="optionMC" for="optionMC"><input type="radio" id="optionMC" name="chkopt" onclick = "change_readonly_property()" value = "MC" /> Multiple Choice</label> </br>
        <label id="optionTF" for="optionTF"><input type="radio" id="optionTF" name="chkopt"  value = "TF" /> True or False </label> </br>
        <label id="optionSA" for="optionSA"><input type="radio" id="optionSA" name="chkopt"  value = "SA" /> Short Answers</label>      
</div>        
 </div>
 
<!-- Total Input-->
<div class="form-group col-md-4">
  <label class="col-md-12 control-label" for="titems">Total Items</label>  
  <input id="titems" name="titems"  class="form-control input-md" type="number" min = "0" max = "50" value = "5">
</div>
</fieldset>
</div>
<div class="panel-footer">
<div class="form-group">
  <div>
    <input  type="submit" style="margin-left:85%" class="btn btn-success pull-rght" value="NEXT PAGE"/>
</div>
</div>

</form></div>';



}
?>
<!--add quiz end-->

<!--add quiz step2 start-->
<?php
if(@$_GET['q']==5 && (@$_GET['step'])==2 ) {
    
$exam_type = @$_GET['etype'];
$questions = " ";

    for($i=1;$i<=@$_GET['n'];$i++)
    {
        if ($exam_type == "MC") {
        $questions = $questions.'<b>Question number&nbsp;'.$i.'&nbsp;:</><br /><!-- Text input-->
        <div class="form-group">
          <label class="col-md-12 control-label" for="qns'.$i.' "></label>  
          <div class="col-md-12">
          <textarea rows="3" cols="5" name="qns'.$i.'" class="form-control" placeholder="Write question number '.$i.' here..."></textarea>  
          </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-12 control-label" for="'.$i.'A"></label>  
          <div class="col-md-12">
          <input id="opt'.$i.'-1" name="opt'.$i.'-1" placeholder="Enter option a" class="form-control input-md" type="text">

          </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-12 control-label" for="'.$i.'B"></label>  
          <div class="col-md-12">
          <input id="opt'.$i.'-2" name="opt'.$i.'-2" placeholder="Enter option b" class="form-control input-md" type="text">

          </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-12 control-label" for="'.$i.'C"></label>  
          <div class="col-md-12">
          <input id="opt'.$i.'-3" name="opt'.$i.'-3" placeholder="Enter option c" class="form-control input-md" type="text">

          </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-12 control-label" for="'.$i.'D"></label>  
          <div class="col-md-12">
          <input id="opt'.$i.'-4" name="opt'.$i.'-4" placeholder="Enter option d" class="form-control input-md" type="text">  
          </div>
        </div>
        <br />
        <b>Correct answer</b>:<br />
        <select id="ans'.$i.'" name="ans'.$i.'" placeholder="Choose correct answer " class="form-control input-md" >
           <option value="X">Select answer for question '.$i.'</option>
          <option value="1">option a</option>
          <option value="2">option b</option>
          <option value="3">option c</option>
          <option value="4">option d</option> </select><br /><br />'; 
        $choices = 4; 
        }
    else if ($exam_type == "TF"){
        $questions = $questions.'<b>Question number&nbsp;'.$i.'&nbsp;:</><br /><!-- Text input-->
        <div class="form-group">
          <label class="col-md-12 control-label" for="qns'.$i.' "></label>  
          <div class="col-md-12">
          <textarea rows="3" cols="5" name="qns'.$i.'" class="form-control" placeholder="Write question number '.$i.' here..."></textarea>  
          </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-12 control-label" for="opt'.$i.'-1"></label>  
          <div class="col-md-12">
          <input id="opt'.$i.'-1" name="opt'.$i.'-1" class="form-control input-md" type="text" value = "True" readonly>
          </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-12 control-label" for="opt'.$i.'-2"></label>  
          <div class="col-md-12">
          <input id="opt'.$i.'-2" name="opt'.$i.'-2" class="form-control input-md" type="text" value = "False" readonly>
          </div>
        </div>
        
        <b>Correct answer</b>:<br />
        <select id="ans'.$i.'" name="ans'.$i.'" placeholder="Choose correct answer " class="form-control input-md" >
           <option value="a">Select answer for question '.$i.'</option>
          <option value="1">True</option>
          <option value="2">False</option></select><br /><br />';
        $choices = 2; 
    }
    else if ($exam_type == "SA"){
       $questions = $questions.'<b>Question number&nbsp;'.$i.'&nbsp;:</><br /><!-- Text input-->
        <div class="form-group">
          <label class="col-md-12 control-label" for="qns'.$i.' "></label>  
          <div class="col-md-12">
          <textarea rows="3" cols="5" name="qns'.$i.'" class="form-control" placeholder="Write question number '.$i.' here..."></textarea>  
          </div>
        </div>
        <b>Correct answer</b>:<br />
        <input id="ans'.$i.'" name="ans'.$i.'" placeholder="Enter Answer..." class="form-control input-md" type="text">
        <br /><br />';
        $choices = 0; 
    }
    }
echo ' <div class= "col-md-11 panel panel-success">       
       <div class="panel-heading" align = "center" style="color:#323232; font-family:"typo";font-size:24px">Create a Quiz: Adding Questions</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="teacher_exam_tab.php?q=addqns&n='.@$_GET['n'].'&eid='.@$_GET['eid'].'&ch='.$choices,'&etype='.@$_GET['etype'].'" method="post">
               <fieldset>'.$questions.'<div class="form-group">
  <label class="col-md-12 control-label" for=""></label>
  <div class="col-md-12"> 
    <input  type="submit" style="margin-left:45%" class="btn btn-primary" value="Submit" class="btn btn-primary"/>
  </div>
</div>

</fieldset>
</form></div>';

}
?><!--add exam step 2 end-->

<!--remove quiz start-->
<?php if(@$_GET['q']==6) {

$query = "select
exam_id,
exam_topic,
exam_description,
type_of_questions,
number_of_items,
time_limit
FROM teachers_to_exam_mapping where email = '$uemail' and exam_id is not null order by exam_id asc";

$query_quizes = mysqli_query($con,$query) or die('Error: Could not connect to database');

echo  '<div class="panel col-md-15"><div class="table-responsive"><table class="table table-striped title1">
<tr><td><b>No</b></td><td><b>Exam ID</b></td><td><b>Title</b></td><td><b>Description</b></td><td><b>Question Type</b></td><td><b>Total questions</b></td><td><b>Time Limit</b></td><td></td></tr>';
$c=1;
while($row = mysqli_fetch_array($query_quizes)) {
        $eid = $row['exam_id'];
	$etitle = $row['exam_topic'];
        $edesc = $row['exam_description'];
        $etype = $row['type_of_questions'];
        $etotal = $row['number_of_items'];
        $etlimit = $row['time_limit'];
	echo '<tr><td>'.$c++.'</td><td>'.$eid.'</td><td>'.$etitle.'</td><td>'.$edesc.'</td><td>'.$etype.'</td><td>'.$etotal.'</td><td>'.$etlimit.'&nbsp;min</td>
	<td><b><a title ="Remove" href="teacher_exam_tab.php?q=rmvquiz&eid='.$eid.'" onclick = "showAlert_to_delete(this)" class="btn sub2" align ="center" style="margin:10px;background:red"><span class="glyphicon glyphicon-trash" aria-hidden="true" style="color:white"></span></a></b></td></tr>';
}
$c=0;
echo '</table></div></div>';

}
?>
<!--remove quiz end-->

<!--Practice Exam Start-->
<?php if(@$_GET['q']==7) {
$query = "select
exam_id,
exam_topic,
exam_description,
type_of_questions,
number_of_items,
time_limit
FROM teachers_to_exam_mapping where email = '$uemail' and exam_id is not null order by exam_id asc";

$query_quizes = mysqli_query($con,$query) or die('Error: Could not connect to database');

echo  '<div class="panel col-md-15"><div class="table-responsive"><table class="table table-striped title1">
<tr><td><b>No</b></td><td><b>Exam ID</b></td><td><b>Title</b></td><td><b>Question Type</b></td><td><b>Time Limit</b></td><td></td></tr>';
$c=1;
while($row = mysqli_fetch_array($query_quizes)) {
        $eid = $row['exam_id'];
	$etitle = $row['exam_topic'];
        $etype = $row['type_of_questions'];
        $etotal = $row['number_of_items'];
        $etlimit = $row['time_limit'];
	echo '<tr><td>'.$c++.'</td><td>'.$eid.'</td><td>'.$etitle.'</td><td>'.$etype.'</td><td>'.$etlimit.'&nbsp;min</td>
	<td><b><a href="teacher_view.php?q=quiz&step=2&pnum=1&taker=t&eid='.$eid.'&tot='.$etotal.'&rtime='.$etlimit.'" class="pull-right btn sub1" style="margin:0px;background:#99cc32"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Start</b></span></a></b></td></tr>';
}
$c=0;
echo '</table></div></div>';

}?>

<!--Quiz Window Start-->
<?php
if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) {
$eid=@$_GET['eid'];
$pnum = $_GET['pnum'];
$rtime = @$_GET['rtime'];
// set questions displayed per page
$qdisplay = 3;

//Get total number of pages
$total_num_of_items = @$_GET['tot'];
if($total_num_of_items % $qdisplay == 0) { $add_page = 0; } else { $add_page = 1;}
$total_pages = intval($total_num_of_items / $qdisplay) + $add_page ;

// Questions displayed per page questions
$start_num = 1 + ($qdisplay*($pnum-1));
if ($pnum == $total_pages) {$end_num = ($qdisplay*($pnum-1)) + $total_num_of_items % $qdisplay;} else {$end_num = $qdisplay + ($qdisplay*($pnum-1));}
//if ($pnum == 1) {$pind = "first";} else if (pnum != 1 && $pnum != $total_pages){$pind = "suceed";} else {$pind = "last";}

//Placing Correct Number of items
$ritems = ($end_num + 1) - $start_num;

$statement = '';
$header = '';
$footer = '';
    
$query_get_questions = "SELECT question_id, question_no, no_of_choices,question_name from online_exam_questions where exam_id ='$eid' AND question_no between '$start_num ' and '$end_num'";

$get_questions = mysqli_query($con, $query_get_questions );

$ext = 1;  
if ($get_questions->num_rows > 0 ){
    
    while($row=mysqli_fetch_array($get_questions))
    {
        $questions = '';
        $optionstatement = '';
        
        $question_num = $row['question_no'];
        $question_name = $row['question_name'];
        $qid = $row['question_id'];
        $noc = $row['no_of_choices'];
        
    $questions = $questions.'<b><input type = "hidden" name = "question'.$ext.'" value="'.$qid.'"/>Question&nbsp;'.$question_num.'&nbsp;:: &nbsp'.$question_name.'</b><br/><br/>';
    
    $query_get_options = "SELECT option_id, option_no, option_name from online_exam_question_choices where question_id = '$qid' ";
    $get_options = mysqli_query($con,$query_get_options );

        while($row=mysqli_fetch_array($get_options)){
            $option = $row['option_name'];
            $option_id = $row['option_id'];
            
            $optionstatement = $optionstatement.'<div "col-md-6"><input type="radio" name="answer'.$ext.'" value="'.$option_id.'"> '.$option.'</div>';    
            }
    $statement = $statement.$questions.$optionstatement.'<br>';
    $ext++;
    }
    
    if ($pnum != $total_pages){
     
        $header = $header.'<div class="panel" style="margin:5%"><form action="teacher_exam_tab.php?q=startquiz&pnum='.$pnum.'&taker=t&ritems='.$ritems.'&eid='.$eid.'&todo=NXT&tot='.$total_num_of_items.'&rtime='.$rtime.'" method="POST"  class="form-horizontal"><br/>';
        $footer = $footer. '<br/><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;NEXT</button></form></div>';
    }
    else {
        $header = $header.'<div class="panel" style="margin:5%"><form action="teacher_exam_tab.php?q=startquiz&pnum='.$pnum.'&taker=t&ritems='.$ritems.'&eid='.$eid.'&todo=SUB&tot='.$total_num_of_items.'&rtime='.$rtime.'" method="POST"  class="form-horizontal"><br/>';
        $footer = $footer. '<br/><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;SUBMIT</button></form></div>';
    }
    

}
else{
    $statement = '<br/><button type="Home" onclick="teacher_view.php?q=6" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;Home</button>';

}    
     $statement = $header.$statement.$footer;
    
     echo $statement;
}

    //header("location:dash.php?q=4&step=2&eid=$id&n=$total");
else if(@$_GET['q']== 'result' && @$_GET['step']== 2) {
    //display results
    
 $eid=@$_GET['eid'];

$view_summary = "SELECT email, exam_id, Exam_Title, HPS, percentage, correct, exam_summary_score_correct, incorrect, exam_summary_score_incorrect from is226_project.exam_summary_score where email = '$uemail' and exam_id = '$eid'";
$view_summary_results =mysqli_query($con,$view_summary)or die('Error157');

echo  '<div class="panel"><center><h1 class="title" style="color:#660033">Result</h1><center><br /><table class="table table-striped title1" style="font-size:20px;font-weight:1000;">';

    while($row=mysqli_fetch_array($view_summary_results) )
    {
    $title = $row['Exam_Title'];
    $hps = $row['HPS'];
    $percentage =$row['percentage'];
    $correct = $row['exam_summary_score_correct'];
    $incorrect = $row['exam_summary_score_incorrect'];
    echo '<tr style="color:#66CCFF"><td>Exam Title</td><td>'.$title.'</td></tr> 
         <tr style="color:#66CCFF"><td>Highest Possible Answers&nbsp;<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></td><td>'.$hps.'</td></tr>
          <tr style="color:#99cc32"><td>Percentage &nbsp;<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span></td><td>'.$percentage.'</td></tr>
              <tr style="color:green"><td>Correct &nbsp;<span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></td><td>'.$correct.'</td></tr>
              <tr style="color:red"><td>Incorrect &nbsp;<span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></td><td>'.$incorrect.'</td></tr>';
    echo '</table></div>';
    }
    echo '<div class="panel" style="margin:5%"><form action="teacher_exam_tab.php?q=savequiz&eid='.$eid.'" method="POST"  class="form-horizontal"><br/>'
        .'<br/><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;SAVE</button></form></div>';
}
?>
<!--Quiz Window End-->

<!--Practice Exam End-->

<!--History View Start-->
<?php if(@$_GET['q']==8) {
    // Initialize Count
    $c=1;
    // Initialize Query
    $query = "select exam_id, title, score_display, percentage from exam_history_view where email = '$uemail' order by record_timestamp desc";
    $view_exam = mysqli_query($con,$query) or die('Error: Cannot view exams');
    
    $statement = '';
    $statement = $statement.'<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
    <tr><td><b>No.</b></td><td><b>Exam ID</b></td><td><b>Exam Title</b></td><td><b>Score</b></td><td><b>Percentage</b></td></tr>';
    while($row = mysqli_fetch_array($view_exam)) {
	$exam_id = $row['exam_id'];
	$title = $row['title'];
	$score = $row['score_display'];
	$percentage = $row['percentage'];

        $statement = $statement.'<tr><td>'.$c++.'</td><td>'.$exam_id.'</td><td>'.$title.'</td><td>'.$score.'</td><td>'.$percentage.'</td></tr>';
        
        }
        $c=0;
        $statement = $statement.'</table></div></div>';
        
        echo $statement;

        }
?>

<!--History View End-->

<!--your feedback create start-->
<?php if(@$_GET['q']==9) {
    
    $query = "select sender_code, sender_email, recipient_class_code, recipient_class_name, recipient_code, recipient_email from is226_project.sender_recipient_master_list where sender_email = '$uemail'";
    
    $fetch_recipients = mysqli_query($con,$query) or die('Error: Cannot view recipients');
    
    while ($row = mysqli_fetch_array($fetch_recipients)) {
    $recipient_code = $row['recipient_code'];
    $recipient_email = $row['recipient_email'];
    $recipient_class_code = $row['recipient_class_code'];
    $recipient_class_name = $row['recipient_class_name'];
    $recipients = '<option value="'.$recipient_code.'">'.$recipient_email.'</option>';
    $recipient_class = '<option value="'.$recipient_class_code.'">'.$recipient_class_name.'</option>';
    }
    
   echo '<div class= "col-md-11 panel panel-primary">       
       <div class="panel-heading" align = "center" style="color:#323232; font-family:"typo";font-size:24px">Create Feedback</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="teacher_feedback_tab.php?q=createfeedback" method="post">
               <fieldset>
               <!-- To -->
                 <div class = "col-md-6">
                  <div class="form-group col-md-2">
                    <label class=" control-label" for="semail">To:</label>  
                  </div>
                  <div class="form-group col-md-4">
                    <select id="recipient" name="recipient" class="input-md">'.$recipients.'</select>
                   </div>
                  </div>
                 <!-- Class -->
                 <div class = "col-md-6">
                  <div class="form-group col-md-2">
                    <label class=" control-label" for="semail">Class:</label>  
                  </div>
                  <div class="form-group col-md-4">
                    <select id="recipient_class" name="recipient_class" class="input-md">'.$recipient_class.'</select>
                   </div>
                  </div>
         <div class="form-group col-md-12">
            <label class="col-md-1 control-label" for="subject">Subject:</label>  
            <input class="col-md-11 control-label" id="subject" name="subject" class="form-control input-md" type="text">
            </div>
         <div class="form-group col-md-12">
         <textarea id="message" name="message" rows="3" cols="130" ></textarea>
         </div>
         
    
       <!-- Button -->
       <div class="form-group">
         <label class="col-md-12 control-label" for=""></label>
         <div class="col-md-12 col-md-offset-5"> 
           <input type="submit" value="SEND" class="btn btn-info"/>
         </div>
       </div>
       
         </div>
           </fieldset>
           </form>

            </div>';
}
?>
<!--your feedback create end-->
<!--feedback start Home-->
<?php if(@$_GET['q']==10) {
$q = @$_GET['q'];
$query = "select distinct feedback_id, curr_sender_user_id, email_sender, full_name_of_sender, sender_category, feedback_status, subject, date_created, time_created, coalesce (current_message,message) as message from is226_project.feedback_master_table
	where email_recpient = '$uemail' and feedback_status in ('S', 'R', 'A', 'E') order by date_created and time_created desc";

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
                          <form class="form-horizontal" action="" method="POST">
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
                          <button type="submit" class="btn btn-primary" formaction="teacher_feedback_tab.php?q=feedback&act=ack&fid='.$id.'">ACKNOWLEDGE</button>
                          <button type="submit" class="btn btn-primary" formaction="teacher_feedback_tab.php?q=feedback&act=esc&fid='.$id.'">ESCALATE</button>
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
                          <form class="form-horizontal" action="teacher_feedback_tab.php?q=replyfeedback&fid='.$id.'&rc='.$sender_code.'&p=10" method="POST">
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

<!--feedback reading portion start-->
<?php if(@$_GET['q']==11) {
$q = @$_GET['q'];
$query = "select distinct feedback_id, coalesce(email_sender, email) as sender_email, curr_recipient_user_id, email_recpient, recipient_category, feedback_status, subject, date_created, time_created, coalesce (current_message,message) as message, substring(coalesce (current_message,message),1,10) as message_preview from is226_project.feedback_master_table
	where email = '$uemail' and feedback_status <> 'X' order by date_created and time_created desc";

$result = mysqli_query($con,$query) or die('Error');


echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
<tr><td><b>No.</b></td><td><b>Subject</b></td><td><b>Message</b></td><td><b>Recipient</b></td><td><b>Account Category</b></td><td><b>Date</b></td><td><b>Time</b></td><td></td></tr>';
$c=1;
while($row = mysqli_fetch_array($result)) {
        $id = $row['feedback_id'];
        $stat = $row ['feedback_status'];
        $recipient = $row ['email_recpient'];
        $recipient_code = $row ['curr_recipient_user_id'];
        $recipient_category = $row ['recipient_category'];
        $message = $row['message'];
        $message_preview = $row['message_preview'];
        $subject = $row['subject'];
        $date = date("d-m-Y",strtotime( $row['date_created']));
        $time = $row['time_created'];

	echo '<tr><td>'.$c++.'</td><td><a title="Click to Open Feedback" data-toggle="modal" data-target="#message'.$id.'">'.$subject.'</a></td><td>'.$message_preview.'</td><td>'.$recipient.'</td><td>'.$recipient_category.'</td><td>'.$date.'</td><td>'.$time.'</td>';
        
        if ($stat == "D" || $stat == "O") {
	echo '<td><a title="Delete Feedback" href="teacher_feedback_tab.php?q=feedback&act=rem&fid='.$id.'" onClick = "return showAlert_to_delete(this)"><b><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></b></a></td></tr>';
        }
        else {
        echo '<td><a title="Reply to Feedback" data-toggle="modal" data-target="#message'.$id.'" ><b><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span></b></a></td>';    
        }
        echo '</tr><div class="modal fade" id="message'.$id.'">
                    <div class="modal-dialog">
                      <div class="modal-content title1">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title title1"><span style="color:blue">Messages</span></h4></div>
                       <div class="modal-body">
                          <form class="form-horizontal" action="teacher_feedback_tab.php?q=replyfeedback&fid='.$id.'&rc='.$recipient_code.'&p=11" method="POST">
                  <fieldset>
                  <!-- From -->
                 <div>
                  <div class="form-group col-md-2">
                    <label class=" control-label" for="semail">To:</label>  
                  </div>
                  <div class="form-group col-md-10">
                    <input id="recipient" name="recipient" class="form-control" type="Text" value = "'.$recipient.'" readonly/>
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
                   <!-- Reply -->
                  <div>
                  <label class="control-label" for="f_reply"> REPLY </label> 
                        <textarea name="f_reply" rows="5" cols="65"></textarea>
                    </div>
                  </fieldset>
                        </div><div class="modal-footer">
                          <button type="submit" class="btn btn-primary" >REPLY</button>
                          <button type="submit" class="btn btn-primary" formaction="teacher_feedback_tab.php?q=feedback&act=res&fid='.$id.'">RESOLVE</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                   </form>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->';

}
echo '</table></div></div>';
}
?>
<!--Feedback reading portion closed-->



</div><!--container closed-->
</div></div>
</body>
</html>

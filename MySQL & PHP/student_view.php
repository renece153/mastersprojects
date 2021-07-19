<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>IS226 - PROJECT (Student) </title>
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>    
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>

 
  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
 <!--alert message-->
<?php if(@$_GET['w'])
{echo'<script>alert("'.@$_GET['w'].'");</script>';}
?>
<!--alert message end-->
<script src="form_validation_file.js"  type="text/javascript"></script>
<script src="js/misc_validation_file.js"  type="text/javascript"></script>
<script src="js/Validateuserform.js"  type="text/javascript"></script>
<script type="text/javascript">
    function ajaxfunction(rc)
    {
        $.ajax({
            url: 'student_action.php?q=process&rc=' + rc;
            success: function(data) {
                $("#sub").html(data);
            }
        });
    }
</script>
<script type="text/javascript">
    $(document).ready(function(){
    var $cat = $('select[name=recipient]'),
        $items = $('select[name=recipient_class]');

    $cat.change(function(){
        var $this = $(this).find(':selected'),
            rel = $this.attr('rel'),
            $set = $items.find('option.' + rel);

        if ($set.size() < 0) {
            $items.hide();
            return;
        }

        $items.show().find('option').hide();

        $set.show().first().prop('selected', true);
    });
});
</script>
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
  if(!(isset($_SESSION['email']))){
header("location:knowyouruser.php");

}
else
{
$user_name = $_SESSION['user_name'];
$uemail=$_SESSION['email'];

include_once 'dbConnection.php';
echo '<span class="pull-right top title1" ><span class="log1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Hello,</span> <a href="student_view.php?q=1" class="log log1">'.$user_name;
}?>
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
        <li <?php if(@$_GET['q']==1) echo'class="active"'; ?> ><a href="student_view.php?q=1"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;Home<span class="sr-only">(current)</span></a></li>
        <li class="dropdown <?php if(@$_GET['q']== 2 || @$_GET['q']== 3) echo'active"'; ?>">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Classes<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="student_view.php?q=2"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;Enroll to Classes</a></li>
            <li><a href="student_view.php?q=3"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>&nbsp;Manage Classes</a></li>
            </ul> </li>
        <li <?php if(@$_GET['q']==4) echo'class="active"'; ?>><a href="student_view.php?q=4"><span class="glyphicon glyphicon-flag" aria-hidden="true"></span>&nbsp;Exams</a></li>
        <li <?php if(@$_GET['q']==5) echo'class="active"'; ?>><a href="student_view.php?q=5"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>&nbsp;History</a></li>
        <li class="dropdown <?php if(@$_GET['q']== 6 || @$_GET['q']== 7) echo'active"'; ?>">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Feedback<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="student_view.php?q=6"><span class="glyphicon glyphicon-plus " aria-hidden="true"></span>&nbsp;Create Feedback</a></li>
            <li><a href="student_view.php?q=7"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span>&nbsp;Manage Feedback</a></li>
            </ul> </li>
		<li class="pull-right"> <a href="logout.php?q=student_view.php"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;Log Out</a></li>
		</ul>
      </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav><!--navigation menu closed-->
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
              <form class="form-row" name="form" action="account_management.php?q=Sam" onSubmit = "return validateUserForm()" method="post">
               <fieldset>
         <div class="form-group col-md-6"">
             <label for="uemail"> Email </label>
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
        <label for="last_name">Last Name</label>
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
        <label for="user_name">Username</label>
        <input id="uusername" name ="uusername" type="text" class="form-control input-md" value = "'.$user_name.'" />
        </div>
     <div class="form-group col-md-6">
  <label for="password">Password</label>
   <input id="upassword" name="upassword"  class="form-control input-md" type="password" value = "'.$user_password.'" />
   <div class="form-helper" style="color:#202020; font-family:"typo";font-size:12px">Provide a password that is between 8 to 20 characters long</div>
    </div> </div>
                  </fieldset>
                        
                          <button type="submit" class="btn btn-primary">SAVE</button>
                        </div>
                   </form>';


}

?>
<!-- End of Home -->
<!-- Start of Enrolling Classes -->
<?php if(@$_GET['q']==2) {
    // Initialize Count
    $c=1;
    // Initialize Query
    $query = "select A.class_code, class_name, description, class_size, occupied, remaining, concat(first_name,' ', last_name) as teacher, B.class_status as current_class_status
                from is226_project.class_details A left join (select class_code, class_status from is226_project.verify_class_status where email = '$uemail') B on A.class_code = B.class_code
                where B.class_status in ('P', 'D') or B.class_status is null
                order by class_size desc";
    $view_classes = mysqli_query($con,$query) or die('Error: Cannot view classes');
    
    echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
    <tr><td><b>No.</b></td><td><b>Class Code</b></td><td><b>Class Name</b></td><td><b>Description</b></td><td><b>Remaining</b></td><td><b>Teacher</b></td><td></td><td></td></tr>';
    while($row = mysqli_fetch_array($view_classes)) {
	$class_name = $row['class_name'];
	$description = $row['description'];
	$class_size = $row['class_size'];
	$class_status = $row['current_class_status'];
	$remaining_size = $row['remaining'];
        $class_code = $row['class_code'];
        $teacher = $row['teacher'];
        
        if ($class_status == NULL ) {
        echo '<tr><td>'.$c++.'</td><td>'.$class_code.'</td><td>'.$class_name.'</td><td>'.$description.'</td><td>'.$remaining_size.'</td><td>'.$teacher.'</td>
                <td><b><a title="Enroll" href="student_action.php?q=enroll&ccode='.$class_code.'" class="pull-right btn" style="margin:0px;background:#00ff00"><span class="glyphicon glyphicon-plus" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
                </tr>';
        }
        elseif ($class_status == 'P'|| $class_status == 'D') {
        echo '<tr><td>'.$c++.'</td><td>'.$class_code.'</td><td>'.$class_name.'</td><td>'.$description.'</td><td>'.$remaining_size.'</td><td>'.$teacher.'</td>
                <td><b><a title="Enrolled to Class" href="#" class="pull-right btn" style="margin:0px;background:#808080"><span class="glyphicon glyphicon-plus" aria-hidden="true" style="color:black"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
                </tr>'; 
        }
        }
        $c=0;
        echo '</table></div></div>';

        }
?>
<!--Manage Enrolling Class End-->
<script src="js/deleterecord.js"></script>
<!-- Start of Managing Classes -->
<?php if(@$_GET['q']==3) {
    // Initialize Count
    $c=1;
    // Initialize Query
    $query = "select A.class_code, class_name, description, class_size, occupied, remaining, concat(first_name,' ', last_name) as teacher, B.class_status as current_class_status
                from is226_project.class_details A left join (select class_code, class_status from is226_project.verify_class_status where email = '$uemail') B on A.class_code = B.class_code
                where B.class_status = 'E'
                order by class_size desc";
    $view_classes = mysqli_query($con,$query) or die('Error: Cannot view classes');
    
    echo  '<div class="panel"><div class="table-responsive"><table class="table table-striped title1">
    <tr><td><b>No.</b></td><td><b>Class Code</b></td><td><b>Class Name</b></td><td><b>Description</b></td><td><b>Current Class Size</b></td><td><b>Teacher</b></td><td></td><td></td></tr>';
    while($row = mysqli_fetch_array($view_classes)) {
	$class_name = $row['class_name'];
	$description = $row['description'];
	$class_size = $row['class_size'];
	$class_status = $row['current_class_status'];
	$occupied = $row['occupied'];
        $class_code = $row['class_code'];
        $teacher = $row['teacher'];
        
        echo '<tr><td>'.$c++.'</td><td>'.$class_code.'</td><td>'.$class_name.'</td><td>'.$description.'</td><td>'.$occupied.'</td><td>'.$teacher.'</td>
                <td><b><a title="Remove" href="student_action.php?q=delete&ccode='.$class_code.'" onClick = "return showAlert_to_delete(this)" class="pull-right btn" style="margin:0px;background:#ff0000"><span class="glyphicon glyphicon-minus" aria-hidden="true" style="color:yellow"></span>&nbsp;<span class="title3" style="color:white"><b></b></span></a></b></td>
                </tr>';
        }
        $c=0;
        echo '</table></div></div>';

        }
?>
<!--Manage Managing Class End-->
<!--Start Exam-->
<?php if(@$_GET['q']==4) {

    $query = "select
                A.exam_id,
                exam_topic,
                exam_description,
		type_of_questions,
		number_of_items,
                time_limit,
		coalesce (eh.attempts,0) as attempts,
		1 - coalesce (eh.attempts,0) as remaining_attempts
                from teachers_to_exam_mapping A
                inner join (select class_code, email from verify_class_status where email = '$uemail' and class_status = 'E') x on A.class_code = x.class_code
                left join (select exam_id, email, count(*) as attempts from exam_history_view group by exam_id, email) eh on eh.email = x.email and eh.exam_id = A.exam_id
                where A.exam_id is not null order by A.exam_id asc";

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
        $remaining_attempts = $row['remaining_attempts'];
        
        if ($remaining_attempts >= 1){
	echo '<tr><td>'.$c++.'</td><td>'.$eid.'</td><td>'.$etitle.'</td><td>'.$etype.'</td><td>'.$etlimit.'&nbsp;min</td>
	<td><b><a href="student_view.php?q=quiz&step=2&pnum=1&taker=t&eid='.$eid.'&tot='.$etotal.'&rtime='.$etlimit.'" class="pull-right btn sub1" style="margin:0px;background:#99cc32"><span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Start</b></span></a></b></td></tr>';
        }
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
     
        $header = $header.'<div class="panel" style="margin:5%"><form action="student_action.php?q=startquiz&pnum='.$pnum.'&taker=t&ritems='.$ritems.'&eid='.$eid.'&todo=NXT&tot='.$total_num_of_items.'&rtime='.$rtime.'" method="POST"  class="form-horizontal"><br/>';
        $footer = $footer. '<br/><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;NEXT</button></form></div>';
    }
    else {
        $header = $header.'<div class="panel" style="margin:5%"><form action="student_action.php?q=startquiz&pnum='.$pnum.'&taker=t&ritems='.$ritems.'&eid='.$eid.'&todo=SUB&tot='.$total_num_of_items.'&rtime='.$rtime.'" method="POST"  class="form-horizontal"><br/>';
        $footer = $footer. '<br/><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;SUBMIT</button></form></div>';
    }
    

}
else{
    
    $statement = '<br/><button type="Home" onclick="student_view.php?q=3" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;Home</button>';

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
    echo '<div class="panel" style="margin:5%"><form action="student_action.php?q=savequiz&eid='.$eid.'" method="POST"  class="form-horizontal"><br/>'
        .'<br/><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;CONTINUE</button></form></div>';
}
?>
<!--Quiz Window End-->
<!-- Check History -->
<?php if(@$_GET['q']==5) {
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
<!-- End of Check History -->

<!--your feedback create start-->
<?php if(@$_GET['q']==6) {
    
    
    $query = "select sender_code, sender_email, recipient_class_code, recipient_class_name, recipient_code, recipient_email from is226_project.sender_recipient_master_list where sender_email = '$uemail'";
    
    $fetch_recipients = mysqli_query($con,$query) or die('Error: Cannot view recipients');
    
    $recipients = '';
    $recipient_class = '';
    
    while ($row = mysqli_fetch_array($fetch_recipients)) {
    $recipient_code = $row['recipient_code'];
    $recipient_email = $row['recipient_email'];
    $recipient_class_code = $row['recipient_class_code'];
    $recipient_class_name = $row['recipient_class_name'];
    $recipients = $recipients.'<option value="'.$recipient_code.'" rel="'.$recipient_code.'">'.$recipient_email.'</option>';
    $recipient_class = $recipient_class.'<option value="'.$recipient_class_code.'" class="'.$recipient_code.'">'.$recipient_class_name.'</option>';
    }
    
   echo '<div class= "col-md-11 panel panel-primary">       
       <div class="panel-heading" align = "center" style="color:#323232; font-family:"typo";font-size:24px">Create Feedback</div>
              <div class="panel-body">
              <form class="form-row" name="form" action="student_action.php?q=createfeedback" method="post">
               <fieldset>
               <!-- To -->
                 <div class = "col-md-6">
                  <div class="form-group col-md-2">
                    <label class=" control-label" for="semail">To:</label>  
                  </div><div class="form-group col-md-4">
                    <select id="recipient" name="recipient">'.$recipients.'</select>
                   </div>
                  </div>';
    
$recipient_classes = '<select id="recipient_class" class="cascade" name="recipient_class">'.$recipient_class.'</select>';

    echo            '<!-- Class -->
                 <div class = "col-md-6">
                  <div class="form-group col-md-2"> 
                    <label class=" control-label" for="class">Class:</label></div><div class="form-group col-md-4">'.$recipient_classes.'
                  </div>
                  <div class="form-group col-md-4">
                    
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
<!--feedback reading portion start-->
<?php if(@$_GET['q']==7) {
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
	echo '<td><a title="Delete Feedback" href="student_action.php?q=feedback&act=rem&fid='.$id.'"><b><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></b></a></td></tr>';
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
                          <form class="form-horizontal" action="student_action.php?q=replyfeedback&fid='.$id.'&rc='.$recipient_code.'&p=11" method="POST">
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
                        </div><div class="modal-footer">';
    if ($stat == "O"){
        echo '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>';
    } else if ($stat == "A" || $stat == "D"){
    echo                      '<button type="submit" class="btn btn-primary" >REPLY</button>
                          <button type="submit" class="btn btn-primary" formaction="student_action.php?q=feedback&act=res&fid='.$id.'">RESOLVE</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>';
    } else{
    echo                  '<button type="submit" class="btn btn-primary" >REPLY</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>';
    }
                          
    echo                    '</div>
                   </form>
                      </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                  </div><!-- /.modal -->';

}
echo '</table></div></div>';
}
?>



</div></div></div></div>
<!--Footer start-->
</body>
</html>

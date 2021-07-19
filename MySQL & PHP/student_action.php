<?php 
ini_set('display_errors', 1);  
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>
<?php
include('dbConnection.php');
session_start();
$uemail = $_SESSION['email'];

if (@$_GET['q'] == "enroll") {
    
    $class_code = $_GET['ccode'];
    
    $query = "CALL is226_project.SP_enroll_to_classes('$uemail', '$class_code')";
    $query_result = mysqli_query($con,$query) or die ('Could Not Enroll to Class'.$uemail.''.$class_code);
    
    if($query_result) {
            header("location:student_view.php?q=2");
        } else {
            echo "ERROR: Could not able to execute $query_result. " . mysqli_error($con);
        }
}
else if (@$_GET['q'] == "delete") {
 $class_code = $_GET['ccode'];
	
	$query = "CALL is226_project.SP_delete_enrollment_from_class ('$uemail', '$class_code')";
    	$query_result = mysqli_query($con,$query) or die ('Could Not Enroll to Class'.$uemail.''.$class_code);
    
    if($query_result) {
            header("location:student_view.php?q=3");
        } else {
            echo "ERROR: Could not able to execute $query_result. " . mysqli_error($con);
        }

}

else if (@$_GET['q']== 'startquiz'){
    //initialize variables
    $eid = @$_GET['eid'];
    $ritems = @$_GET['ritems'];
    $todo = @$_GET['todo'];
    $total_num_of_items = @$_GET['tot'];
    $rtime = @$_GET['rtime'];
    $upn = @$_GET['pnum'] + 1;
    $taker = @$_GET['taker'];
    
    //for($i=1;$i<=$n;$i++)
    for($x=1; $x <= $ritems; $x++){
        $qid = $_POST['question'.$x];
        $ans = $_POST['answer'.$x];
       //if("" == trim($_POST['question'.$x])){$qid = NULL;} else {$qid = $_POST['question'.$x];}
       //if("" == trim($_POST['answer'.$x])){$ans = NULL;} else {$ans = $_POST['answer'.$x];}
       $query_stage_answers = "CALL is226_project.sp_post_answers_to_staging('$uemail','$eid','$qid','$ans')";
       $save_answers = mysqli_query($con,$query_stage_answers);
    }
     
    if ($todo == "NXT"){
//        echo "$ritems".'<br>';
//        echo "$email".'<br>';
//        echo "$eid".'<br>';
//        echo "$qid".'<br>';
//        echo "$ans".'<br>';
        header("location:student_view.php?q=quiz&step=2&pnum=$upn&taker=t&eid=$eid&tot=$total_num_of_items&rtime=$rtime");
    } else if ($todo == "SUB"){
//        echo "$ritems".'<br>';
//        echo "$email".'<br>';
//        echo "$eid".'<br>';
//        echo "$qid".'<br>';
//        echo "$ans".'<br>';
        $query_submit_answers = "CALL SP_validate_answers('$uemail','$eid')";
        $save_answers_2 = mysqli_query($con,$query_submit_answers);
        header("location:student_view.php?q=result&step=2&eid=$eid");
}}
else if (@$_GET['q']== 'savequiz'){
     $eid=@$_GET['eid'];
     $query = "CALL save_quiz_score_to_history('$uemail','$eid')";
     $save_answers_3 = mysqli_query($con,$query);
     header("location:student_view.php?q=4");
}
else if(@$_GET['q']== 'createfeedback') {
    $recipient= $_POST['recipient'];
    $recipient_class = $_POST['recipient_class'];
    $subject= $_POST['subject'];
    $message= $_POST['message'];
    $attachment = NULL;
    
    $insert_feedback = "CALL SP_create_feedback('C', '$uemail' , '$recipient_class' ,'$subject', '$message', ' $attachment', 'NULL', 'NULL', '$recipient')";
    
    $query_result=mysqli_query($con,$insert_feedback) or die ('Could create feedback'.$recipient. $recipient_class.$subject.$message.$uemail);
    
    if($query_result) {
            header("location:student_view.php?q=6");
            echo "Successfully recoreded Feedback ".'$subject';
        } else {
            echo "ERROR: Could not able to execute $insert_feedback. " . mysqli_error($con);
        }

} elseif(@$_GET['q']== 'feedback') {
    $fid = @$_GET['fid'];

    if (@$_GET['act'] == 'ack'){
       $update_query = "CALL SP_update_feedback('$fid','A')";
       $update_status = mysqli_query($con,$update_query);
       
       if($update_status) {
            header("location:student_view.php?q=7");
            echo "Updated Status to Acknowledge: ".'$fid';
        } else {
            echo "ERROR: Could not able to execute $update_query. " . mysqli_error($con);
        }
    } 
    elseif (@$_GET['act'] == 'esc'){
        $update_query = "CALL SP_update_feedback('$fid','Q')";
        $update_status = mysqli_query($con,$update_query);
        
        if($update_status) {
            header("location:student_view.php?q=7");
            echo "Updated Escalated: ".'$fid';
        } else {
            echo "ERROR: Could not able to execute $update_query. " . mysqli_error($con);
        }
    }
    elseif (@$_GET['act'] == 'res'){
         $update_query = "CALL SP_update_feedback('$fid','O')";
         $update_status = mysqli_query($con,$update_query);
         if($update_status) {
            header("location:student_view.php?q=7");
            echo "Updated Escalated: ".'$fid';
        } else {
            echo "ERROR: Could not able to execute $update_query. " . mysqli_error($con);
        }
    }
    elseif (@$_GET['act'] == 'rem'){
         $update_query = "CALL SP_update_feedback('$fid','X')";
         $update_status = mysqli_query($con,$update_query);
         if($update_status) {
            header("location:student_view.php?q=7");
            echo "Updated Escalated: ".'$fid';
        } else {
            echo "ERROR: Could not able to execute $update_query. " . mysqli_error($con);
        }
    }
    
}
elseif (@$_GET['q']== 'replyfeedback') {
    $fid = @$_GET['fid'];
    $recipient = @$_GET['rc'];
    $recipient_class = NULL;
    $subject= $_POST['subject'];
    $reply = $_POST['f_reply'];
    $attachment = '';
    $with_attachment = 'N';
    
    $reply_feedback = "CALL SP_create_feedback('R', '$email' , '$recipient_class' , '$subject', '$reply', '$attachment', '$with_attachment', '$fid', '$recipient')";
    
    $query_result=mysqli_query($con,$reply_feedback) or die ('Could not reply to feedback '.$email.' '.$recipient_class.' '.$subject.' '.$reply.' '.$attachment.' '.$with_attachment.' '.$fid.' '.$recipient);
    
    
    $page = @$_GET['p'];
    
    if ($page == 11){
    if($query_result) {
            header("location:student_view.php?q=7");
            echo "Successfully recoreded Feedback ".$subject;
        } else {
            echo "ERROR: Could not able to execute $reply_feedback. " . mysqli_error($con);
        }
    } elseif ($page == 10){
        if($query_result) {
            header("location:student_view.php?q=7");
            echo "Successfully recoreded Feedback ".$subject;
        } else {
            echo "ERROR: Could not able to execute $reply_feedback. " . mysqli_error($con);
        }
    }
}
?>
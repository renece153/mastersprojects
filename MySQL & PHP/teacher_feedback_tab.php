<?php
include_once 'dbConnection.php';
session_start();
$email=$_SESSION['email'];

if(@$_GET['q']== 'createfeedback') {
    $recipient= $_POST['recipient'];
    $recipient_class = $_POST['recipient_class'];
    $subject= $_POST['subject'];
    $message= $_POST['message'];
    $attachment = '';
    
    $insert_feedback = "CALL is226_project.SP_create_feedback('C', '$email' , '$recipient_class' ,'$subject', '$message', ' $attachment', 'NULL', 'NULL', '$recipient')";
    
    $query_result=mysqli_query($con,$insert_feedback) or die ('Could crete feedback');
    
    if($query_result) {
            header("location:teacher_view.php?q=9");
            echo "Successfully recoreded Feedback ".'$subject';
        } else {
            echo "ERROR: Could not able to execute $insert_feedback. " . mysqli_error($con);
        }
}elseif(@$_GET['q']== 'feedback') {
    $fid = @$_GET['fid'];

    if (@$_GET['act'] == 'ack'){
       $update_query = "CALL is226_project.SP_update_feedback('$fid','A')";
       $update_status = mysqli_query($con,$update_query);
       
       if($update_status) {
            header("location:teacher_view.php?q=10");
            echo "Updated Status to Acknowledge: ".'$fid';
        } else {
            echo "ERROR: Could not able to execute $update_query. " . mysqli_error($con);
        }
    } 
    elseif (@$_GET['act'] == 'esc'){
        $update_query = "CALL is226_project.SP_update_feedback('$fid','Q')";
        $update_status = mysqli_query($con,$update_query);
        
        if($update_status) {
            header("location:teacher_view.php?q=10");
            echo "Updated Escalated: ".'$fid';
        } else {
            echo "ERROR: Could not able to execute $update_query. " . mysqli_error($con);
        }
    }
    elseif (@$_GET['act'] == 'res'){
         $update_query = "CALL is226_project.SP_update_feedback('$fid','O')";
         $update_status = mysqli_query($con,$update_query);
         if($update_status) {
            header("location:teacher_view.php?q=11");
            echo "Updated Escalated: ".'$fid';
        } else {
            echo "ERROR: Could not able to execute $update_query. " . mysqli_error($con);
        }
    }
    elseif (@$_GET['act'] == 'rem'){
         $update_query = "CALL is226_project.SP_update_feedback('$fid','X')";
         $update_status = mysqli_query($con,$update_query);
         if($update_status) {
            header("location:teacher_view.php?q=11");
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
    
    $reply_feedback = "CALL is226_project.SP_create_feedback('R', '$email' , '$recipient_class' , '$subject', '$reply', '$attachment', '$with_attachment', '$fid', '$recipient')";
    
    $query_result=mysqli_query($con,$reply_feedback) or die ('Could not reply to feedback '.$email.' '.$recipient_class.' '.$subject.' '.$reply.' '.$attachment.' '.$with_attachment.' '.$fid.' '.$recipient);
    
    
    $page = @$_GET['p'];
    
    if ($page == 11){
    if($query_result) {
            header("location:teacher_view.php?q=11");
            echo "Successfully recoreded Feedback ".$subject;
        } else {
            echo "ERROR: Could not able to execute $reply_feedback. " . mysqli_error($con);
        }
    } elseif ($page == 10){
        if($query_result) {
            header("location:teacher_view.php?q=10");
            echo "Successfully recoreded Feedback ".$subject;
        } else {
            echo "ERROR: Could not able to execute $reply_feedback. " . mysqli_error($con);
        }
    }
}
?>
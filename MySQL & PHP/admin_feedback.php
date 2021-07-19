<?php
include_once 'dbConnection.php';
session_start();

if(@$_GET['q']== 'feedback') {
    $fid = @$_GET['fid'];

    if (@$_GET['act'] == 'ack'){
       $update_query = "CALL is226_project.SP_update_feedback('$fid','A')";
       $update_status = mysqli_query($con,$update_query);
       
       if($update_status) {
            header("location:admin_view.php?q=7");
            echo "Updated Status to Acknowledge";
        } else {
            echo "ERROR: Could not able to execute";
        }
    } 
    elseif (@$_GET['act'] == 'dec'){
        $update_query = "CALL is226_project.SP_update_feedback('$fid','D')";
        $update_status = mysqli_query($con,$update_query);
        
        if($update_status) {
            header("location:admin_view.php?q=7");
            echo "Updated Escalated: ".'$fid';
        } else {
            echo "ERROR: Could not able to execute";
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
    
    
    if($query_result) {
            header("location:admin_view.php?q=7");
            echo "Successfully recoreded Feedback";
        } else {
            echo "ERROR: Could not able to execute";
        }
}
?>

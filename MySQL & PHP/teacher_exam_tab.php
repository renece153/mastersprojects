<?php
include_once 'dbConnection.php';
session_start();
$email=$_SESSION['email'];

if(@$_GET['q']== 'addquiz') {
    
$title = $_POST['title'];
$title = ucwords(strtolower($title));
$class = $_POST['class'];
$timelimit = $_POST['timelimit'];
$qdesc = $_POST['qdesc'];
$etype = $_POST['chkopt'];
$total_items = $_POST['titems'];

echo "$title";
echo "$class";
echo "$timelimit";
echo "$qdesc";
echo "$etype";
echo "$total_items";
$result = mysqli_query($con,"CALL is226_project.SP_add_exam('$title','$qdesc' ,'$etype' , '$class','$total_items','$timelimit')");
if($result){
    $query = mysqli_query($con,"select exam_id from online_exam 
                                where title = '$title' and class_code = '$class'
                                order by record_timestamp desc limit 1");

    while($row = mysqli_fetch_assoc($query)) {
    $eid = $row['exam_id'];
    };
    //echo "$eid";
    header("location:teacher_view.php?q=5&step=2&eid=$eid&n=$total_items&etype=$etype");
} 
else 
{
    echo "ERROR: Could not able to execute $result. " . mysqli_error($con);
} } 
else if (@$_GET['q']== 'addqns') {
    $n=@$_GET['n'];
    $eid=@$_GET['eid'];
    $ch=@$_GET['ch'];
    $etype = @$_GET['etype'];
    
    for($i=1;$i<=$n;$i++) {
        
        if ($etype == "MC" || $etype == "TF") {
            for($j=1;$j<=$ch;$j++){
                $opt = $_POST['opt'.$i.'-'.$j];
                $stage_options = "CALL is226_project.SP_stage_options('$eid', '$j', '$opt')";
                
                $stage = mysqli_query($con,$stage_options);
                if(!$stage){
                    echo "ERROR: Could not able to execute $stage. " . mysqli_error($con);
                }
            } $j = 0;
        }
    $qns = $_POST['qns'.$i];
    $ans = $_POST['ans'.$i];
    
    $opt = $_POST['opt'.$i.'-'.$j];
    $query = "CALL is226_project.SP_add_questions_to_exam('$eid','$i','$ch', '$etype', '$qns', '$ans')";    
    
    $add_questions_to_exam = mysqli_query($con,$query);
    
        if($add_questions_to_exam) {
            header("location:teacher_view.php?q=5");
        } else {
            echo "ERROR: Could not able to execute $add_questions_to_exam. " . mysqli_error($con);
        }
        
    } $i = 0;
}
else if (@$_GET['q']== 'rmvquiz'){
     $eid=@$_GET['eid'];
     
     $remove = "CALL is226_project.SP_archive_exam('$eid')";
     
     $remove_exam = mysqli_query($con,$remove);
     
     if($remove_exam) {
            header("location:teacher_view.php?q=6");
        } else {
            echo "ERROR: Could not able to execute $remove_exam. " . mysqli_error($con);
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
       $query_stage_answers = "CALL is226_project.sp_post_answers_to_staging('$email','$eid','$qid','$ans')";
       $save_answers = mysqli_query($con,$query_stage_answers);
    }
     
    if ($todo == "NXT"){
//        echo "$ritems".'<br>';
//        echo "$email".'<br>';
//        echo "$eid".'<br>';
//        echo "$qid".'<br>';
//        echo "$ans".'<br>';
        header("location:teacher_view.php?q=quiz&step=2&pnum=$upn&taker=t&eid=$eid&tot=$total_num_of_items&rtime=$rtime");
    } else if ($todo == "SUB"){
//        echo "$ritems".'<br>';
//        echo "$email".'<br>';
//        echo "$eid".'<br>';
//        echo "$qid".'<br>';
//        echo "$ans".'<br>';
        $query_submit_answers = "CALL is226_project.SP_validate_answers('$email','$eid')";
        $save_answers_2 = mysqli_query($con,$query_submit_answers);
        header("location:teacher_view.php?q=result&step=2&eid=$eid");
    }
}
else if (@$_GET['q']== 'savequiz'){
     $eid=@$_GET['eid'];
     
     $query = "CALL save_quiz_score_to_history('$email','$eid')";
     $save_answers_3 = mysqli_query($con,$query);
     header("location:teacher_view.php?q=7");
}

?>
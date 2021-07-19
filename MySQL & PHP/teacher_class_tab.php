<?php 
ini_set('display_errors', 1);  
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>
<?php
include('dbConnection.php');
session_start();
$email = $_SESSION['email'];

if (@$_GET['q'] == "newclass") {

    $class_name = $_POST['class_name'];
    $class_description = $_POST['class_description'];
    $class_size = $_POST['class_size'];

    $insert_query = "CALL is226_project.SP_insert_new_class('$email', '$class_name' , '$class_size' ,'$class_description')";

    $query_result=mysqli_query($con,$insert_query) or die ('Could Not Add Class');

    if($query_result) {
            header("location:teacher_view.php?q=2");
            echo "Successfully added Class ".'$class_name';
        } else {
            echo "ERROR: Could not able to execute $insert_query. " . mysqli_error($con);
        }
}
//echo "$email"; echo "$class_name"; echo "$class_description"; echo 'www'."$class_size";
else if (@$_GET['q'] == "manclass") {
    $action = $_GET['act'];


    if ($action == 1) {
        ## Update Class Table
        $sce_id = NULL;
        $class_code = $_POST['ccode'];
        $class_name = $_POST['cname'];
        $class_desc = $_POST['desc'];
        $class_size = $_POST['size'];
        $class_status = NULL;
        $rval = "3";
        }
    elseif ($action == 2)  {
        ## Delete Record Class Table
        $sce_id = '';
        $class_code = $_GET['ccode'];
        $class_name = '';
        $class_desc = '';
        $class_size = '';
        $class_status = '';
        $rval = "3";
        }
    elseif ($action == 3 || $action == 4)  {
        ## Update Enrollment Table to Enrolled
        $sce_id = $_GET['sid'];
        $class_code = NULL;
        $class_name = NULL;
        $class_desc = NULL;
        $class_size = NULL;
        $class_status = $_GET['cstatus'];
        $rval = "4";
        }
        //echo "$class_code"; echo "$class_name"; echo "$class_desc"; echo "$class_size";
        $manage_query = "CALL is226_project.SP_manage_classes('$action', '$sce_id','$class_code','$class_name', '$class_desc', '$class_size','$class_status')";
        echo $manage_query;
        $query_result = mysqli_query($con,$manage_query) or die ('Could Not Alter Classes'.$action.$sce_id.$class_code.$rval);
        
        if($query_result) {
            header("location:teacher_view.php?q=$rval");
            //echo "$class_code"; echo "$class_name"; echo "$class_desc"; echo "$class_size";
            //echo "Successfully added Class ".'$class_name';
        } else {
            echo "ERROR: Could not able to execute $manage_query. " . mysqli_error($con);
        }
}

?>

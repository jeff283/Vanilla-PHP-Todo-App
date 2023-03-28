<?php session_start(); ?>
<?php include './inc/header.php'; ?>
<?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $toggle = $_GET['toggle'];
    // echo $id;
    // echo $toggle;
    
    $sql = "UPDATE task SET task_status=$toggle WHERE task_ID = $id;";
    if ($conn->query($sql) !== TRUE) {
        echo "Error editing Task : " . $conn->error;
    }else{
        $_SESSION['message'] = 'Task Edited Succesfully';
        header("location:index.php");
    } 
    
}

 ?>
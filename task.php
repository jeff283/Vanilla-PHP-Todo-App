<?php session_start(); ?>
<?php include './inc/header.php'; ?>

<?php 
if(!(isset($_SESSION['update']))){
    $_SESSION['update'] = false;
}
?>


<?php 
function validateIn(){
    // validate title
    if(empty($_POST['task-title'])){
        $_SESSION['titleErr'] = ' A Title is required';
    }else {
        $taskTitle = filter_input(INPUT_POST, 'task-title', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    }
    // validate description
    if(empty($_POST['task-desc'])){
        $_SESSION['descErr']= ' A Description is required';
    }else {
        $taskDesc = filter_input(INPUT_POST, 'task-desc', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    }
    return array($taskTitle, $taskDesc);
}
?>

<?php
if (isset($_GET['edit'])) {
    $_SESSION['id'] = $_GET['edit'];
    $id = $_SESSION['id'];
    $data = $conn->query("SELECT task_title, task_desc FROM task WHERE task_id=$id") or die($conn->error());
    $_SESSION['update'] = true;

    if ($data->num_rows) {
        $row = $data->fetch_array();
        $title=$row['task_title'];
        $desc=$row['task_desc'];
    }
}
 ?>

<?php
if (isset($_GET['delete'])) {
    $_SESSION['id'] = $_GET['delete'];
    $id = $_SESSION['id'];
    $data = $conn->query("DELETE FROM task WHERE task_id=$id") or die($conn->error());
    $_SESSION['delete'] = true;
    header("location:index.php");
}
 ?>

<?php 
$taskTitle = $taskDesc = '';
$titleErr = $descErr = '';
$_SESSION['message'] = '';

$uuid = $_SESSION['uuid'];
empty($uuid) ? header("location:login.php") : null;
    // validate submission
    if(isset($_POST['submit'])){
        list($taskTitle, $taskDesc) = validateIn();
        echo $taskDesc;
        echo "<br>";
        echo isset($_SESSION['update']);
        echo "<br>";
        echo empty($_SESSION['update']);
        if(!isset($_SESSION['update'])||empty($_SESSION['update'])){
            echo "Saving";
            $sql = "INSERT INTO task (uuid, task_title, task_desc) VALUES('$uuid', '$taskTitle', '$taskDesc')";    
            if ($conn->query($sql) !== TRUE) {
                echo "Error creating Task : " . $conn->error;
            }else{
                $_SESSION['message'] = 'Task Added Succesfully';
                header("location:index.php");
            }
        }elseif(isset($_SESSION['update'])){
            $id = $_SESSION['id'];
            $sql = "UPDATE task SET task_title ='$taskTitle', task_desc = '$taskDesc' WHERE task_ID = $id;";
            if ($conn->query($sql) !== TRUE) {
                echo "Error editing Task : " . $conn->error;
            }else{
                $_SESSION['message'] = 'Task Edited Succesfully';
                header("location:index.php");
            } 
        }
        unset ($_SESSION['update']);
        unset ($_SESSION['id']);
    }

?>


<h1 class="task-title"><?php echo ($_SESSION['update'] == true) ? 'EDIT TASK' : 'CREATE TASK'?></h1>
<!-- <h1 class="task-title">CREATE TASK</h1> -->



<div class="main-task-form">
    <form id='task-sub-form' action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="POST" >
        <div class="input-container">
            <textarea required maxlength="255" class="text-area-txt task-title-txt" id="task-title" name="task-title"  oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"' placeholder="Enter the Title..."><?php echo !(empty($title)) ? $title : null; ?></textarea>
            
            <textarea required maxlength="1000" class="text-area-txt task-desc-txt" id="task-desc" name="task-desc"  oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"' placeholder="Enter the Description..."><?php echo !(empty($desc)) ? $desc : null; ?></textarea>

            <br><br>
    
            <input id='submit' name='submit' value="Submit" class="btn submit-btn" type="submit">
            
        </div>
    </form>
</div>




<?php include './inc/footer.php'; ?>
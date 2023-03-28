

<?php include './config/database.php';?>

<?php
function pre_r($array){
    echo'<pre>';
    print_r($array);
    echo'</pre>';
}
?>





<?php
function InitS(){
    $_SESSION['uuid']='';
    $_SESSION['user_name']='';
    $_SESSION['user_Auth']='';
    $_SESSION['user_password']='';
    $_SESSION['passErr']='';
    $_SESSION['nameErr']='';
    $_SESSION['msg_type']='';
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <title>Todo App</title>
    <!-- ######Use this for production -->
    <!-- <link rel="stylesheet" href="style.css"> -->
    <!-- ######Use this for Development -->
    <!-- Prevents browser caching of the css file during development by adding a random int -->
    <?php echo "<link rel='stylesheet' type='text/css' href='style.css?'".mt_rand().">";?>
    <script src="main.js" defer></script>
</head>
<body>
    <!-- Navabr -->
    <nav class="navbar">
        <!-- Brand Name -->
        <div class="brand-title"><a href="./">TODO</a></div>
        <!-- Hamburger Menu -->
        <a href="#" class="toggle-button">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
        </a>
        <!-- Nav Items -->
        <div class="navbar-links">
            <ul>
                <li><a href="./">Home</a></li>
                <li><a href="./task.php">Add Task</a></li>
                <?php if ((isset($_SESSION['user_Auth'])) && ($_SESSION['user_Auth'] == 1)): ?>
                <li><a href="./logout.php">Logout</a></li>
                <!-- <li><a href="./login.php">Login</a></li> -->
                <?php else:?>
                <li><a href="./login.php">Login</a></li>
                <?php endif; ?>

            </ul>
        </div>
    </nav>
    

    <div class="main-section">



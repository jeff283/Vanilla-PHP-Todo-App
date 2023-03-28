<?php session_start(); ?>
<?php include './inc/header.php'; ?>

<?php InitS(); ?>

<?php

function validateIn($username,$password){
    // validate title
    if(empty($_POST['user_name'])){
        $_SESSION['nameErr'] = ' A Title is required';
    }else {
        $username = filter_input(INPUT_POST, 'user_name', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    }
    // validate description
    if(empty($_POST['user_password'])){
        $_SESSION['passErr']= ' A Description is required';
    }else {
        $password = filter_input(INPUT_POST, 'user_password', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    }
    return array($username, $password);
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
<body class="bg-black white-tx">


<?php if (isset($_GET['register'])): ?>

<?php
    $register = $_GET['register'];
    if($register != true || empty($register)){
        header("location:login.php");
    }

?>

<?php 
$uuid = $username = $password = '';
if(isset($_POST['register'])){
    list($username, $password) = validateIn($username,$password);
    $sql = "INSERT INTO user (uuid, user_name, user_password) VALUES(UUID(), '$username', '$password')";    
    if ($conn->query($sql) !== TRUE) {
        echo "Error creating Task : " . $conn->error;
    }else{
        $_SESSION['message'] = 'Task Added Succesfully';
        header("location:login.php");
    }
}
?>



<form class="login"action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']).'?register=true';?>" method="POST" >
  <h2>Welcome</h2>
  
  <p><?php echo $username;?></p>
  <p>Please Register</p>
  <input required  type="text" name='user_name' placeholder="User Name" />
  <input required  type="password" name='user_password'placeholder="Password" />
  <!-- <input type="submit" value="Register" /> -->
  <input id='register' name='register' value="Register" type="submit">
  <div class="links">
    <!-- <a href="#">Forgot password</a> -->
    <a href="./login.php">Login</a>
  </div>
</form>

<?php else: ?>

<?php 
$uuid = $username = $password = '';
if(isset($_POST['login'])){
    list($username, $password) = validateIn($username,$password);
        
    $sql = "SELECT uuid, user_name, user_password FROM user WHERE user_name='$username' AND user_password='$password' LIMIT 1";    
    
    $data = $conn->query($sql) or die( $conn->error);
    
    if ($data->num_rows) {
        $row = $data->fetch_array();
        $_SESSION['uuid'] = $row['uuid'];
        $_SESSION['user_name']=$row['user_name'];
        $_SESSION['user_password']=$row['user_password'];
    }
    
    if (($_SESSION['user_name'] == $username) && ($_SESSION['user_password'] == $password)) {
        $_SESSION['user_Auth'] = 1;
        header("location:index.php");
        
    }else{
        header("location:login.php");
    }
}
?>

<form class="login"action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="POST" >
  <h2>Welcome</h2>
  <p>Please log in</p>
  <input required name='user_name' type="text" placeholder="User Name" />
  <input required  name='user_password' type="password" placeholder="Password" />
  <!-- <input type="submit" value="Log In" /> -->
  <input id='login' name='login' value="Log In" type="submit">
  <div class="links">
    <a href="#">Forgot password</a>
    <a href="./login.php?register=true">Register</a>
  </div>
</form>

<?php unset($_GET['register']) ?>

<?php endif ?>
<?php include './inc/footer.php'; ?>
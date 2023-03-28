<?php
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'todo_db');

// Create connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

// Check connection
if ($conn->connect_error) {
  die('Connection failed: ' . $conn->connect_error);
}

// echo 'Connected successfully <br>';

//creating table if they do not exist

//create User table
$sql = "CREATE TABLE IF NOT EXISTS user(uuid VARCHAR(255) PRIMARY KEY, user_name VARCHAR(255), user_password VARCHAR(255));
";


if ($conn->query($sql) !== TRUE) {
  echo "Error creating Task table: " . $conn->error;
}

//create task table
$sql = "CREATE TABLE IF NOT EXISTS task(task_ID INT AUTO_INCREMENT PRIMARY KEY, uuid VARCHAR(255), task_title VARCHAR(1000), task_desc TEXT, task_status BIT, FOREIGN KEY(uuid) REFERENCES user(uuid));
";


if ($conn->query($sql) !== TRUE) {
  echo "Error creating Task table: " . $conn->error;
}
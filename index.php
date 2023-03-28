<?php session_start(); ?>

<?php include './inc/header.php'; ?>

<?php 
unset ($_SESSION['update']);
?>

<!-- Get Data -->
<?php

$uuid = $_SESSION['uuid'];
empty($uuid) ? header("location:login.php") : null;
$sql = "SELECT * FROM task WHERE task.uuid= '$uuid';";
$results = mysqli_query($conn, $sql);
$tasks = mysqli_fetch_all($results, MYSQLI_ASSOC);
$count = 0;
?>


<h1 class="task-title">MY TASKS</h1>


<!-- Check If there are any task -->
<?php if(empty($tasks)): ?>
    <p class="lead mt-3">There is no Task Right Now</p>
<?php endif; ?>

<div class="data-display">
    <table class="task-table">
        <thead>
            <tr>
                <th>No</th>
                <th>Status</th>
                <th>Title</th>
                <th colspan="2">Modify</th>
            </tr>
        </thead>
        <tbody>


        <?php foreach ($tasks as $task): ?>
            <?php $count++;?>
            <tr id="task-info_<?php echo $task['task_ID'] ?>" class="task-info data-divider">
            <!-- Count of tasks displayed -->
                <td><?php echo $count?></td>
                <!-- Marks task completion -->
                <td><input onclick="checboxToggle(this)" type="checkbox" class="status-checkbox" id="check_<?php echo $task['task_ID'] ?>" data-status=" <?php echo $task['task_status']?>" <?php  echo ($task['task_status'] == 1) ? "checked" : null ?>> </td>
                <!-- Shows Task Title -->
                <td onclick="showDesc('<?php echo $task['task_ID'] ?>')" class="task-name"> <?php echo $task['task_title'] ?> </td>
                <!-- Edits a task -->
                
                <td><a href="./task.php?edit=<?php echo $task['task_ID'];?>" name="edit-btn" id="btn_<?php echo $task['task_ID'] ?>" class="btn edit-btn">Edit</a></td>
                <td><a href="./task.php?delete=<?php echo $task['task_ID'];?>" name="edit-btn" id="btn_<?php echo $task['task_ID'] ?>" class="btn edit-btn">Delete</a></td>


            </tr>
            <tr class="task-desc">
                <td hidden colspan="4"  id="desc_<?php echo $task['task_ID'] ?>"  > <?php echo $task['task_desc'] ?></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>


<?php include './inc/footer.php'; ?>
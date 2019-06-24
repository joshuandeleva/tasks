<?php

if(isset($_GET['id']))
{
    $id = $_GET["id"];
//extracct($_GET);
    require 'index.php';
    $sql = "delete from task where task_id =$id";
    mysqli_query($conn, $sql);

}
header("location:show.php");//redirect to show.php


















?>

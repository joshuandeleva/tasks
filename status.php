<?php
if(isset($_GET["id"]))
{
    $id = $_GET["id"];
    require 'index.php';
    $sql="select * from crude where taskid = $id";
    $result = mysqli_query($conn,$sql);
    $row = mysqli_fetch_assoc($result);
    extract($row);
}

if (isset($_POST["status"]))
{
    $price = $_POST["status"];
    $quantity = $_REQUEST["datetodo"];
    $id = $_REQUEST["id"];
    require 'index.php';
    $sql ="update crude set status=$status, where taskid=$id";
    mysqli_query($conn,$sql) or die(mysqli_error($conn));
    header("location:show.php");
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>STATUS</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

</head>
<body>
<?php
require 'navbar.php';
?>


<div class="container">
    <div class="row justify-content-center">
        <div class="col-sm-6">

            <div class="card"></div>

            <div class="card-header">
                <b>update new task</b>
            </div>
            <div class="card-body">

                <?php

                if (isset ($message))
                    echo "<P class='text-danger'> $message</P>"
                ?>

                <form action="save.php" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="title">task_name</label>
                        <input type="text "class="form-control" name="task_name" required>
                    </div>
                    <div class="form-group">
                        <label for="title">date_to_do</label>
                        <input type="date"class="form-control" name="date_to_do" required>
                        <button class="btn btn-info btn-block">update task</button>
                    </div>
                </form>
            </div>


        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#task').DataTable();
    } );
</script>
</body>
</html>



























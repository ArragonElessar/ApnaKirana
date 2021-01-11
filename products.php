<?php
    session_start();
    if(isset($_SESSION['email'])){
        $name = $_POST['name'];
        require("connect.php");
        $sql = "SELECT * FROM `products` WHERE `name`='$name'";
        if($q = mysqli_query($link,$sql)){
            while($href = mysqli_fetch_assoc($q)){
                echo json_encode($href);
            }
        }
    }
    else{
        echo 'n';
    }
?>
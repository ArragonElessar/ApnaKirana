<?php
    session_start();
    require("connect.php");
    $msg=$_POST['data'];
    if(isset($msg) && $msg=="L"){
        $email = $_SESSION['email'];
        $time = date("d-m-Y h:i:sa", time());
        $sql = "INSERT INTO `userlog`(`email`, `type`, `time`) VALUES ('$email','OUT','$time')";
        mysqli_query($link,$sql);
        session_unset();
    }
?>
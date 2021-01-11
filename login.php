<?php
    session_start();
    require("connect.php");
    $time = date("d-m-Y h:i:sa", time());
    $email = $_POST['email'];
    $pass = md5($_POST['pass']);
    $match = "SELECT `password` FROM `details` WHERE `email`='$email'";
    if($q = mysqli_query($link, $match)){
        while($passArray = mysqli_fetch_assoc($q)){
            if($passArray['password'] == $pass){
                echo "M";
                $_SESSION['email'] = $email;
                $log = "INSERT INTO `userlog`(`email`, `type`, `time`) VALUES ('$email','IN','$time')";
                mysqli_query($link, $log);
            }
        }
    }
?>
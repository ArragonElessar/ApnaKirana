<?php
session_start();
require("connect.php");
$email = $_POST['email'];
$pass = md5($_POST['pass']);
$fetch = "SELECT `email` FROM `details` WHERE `email` = '$email'";
if($query = mysqli_query($link, $fetch)){
    $emailArray = mysqli_fetch_assoc($query);
    if(count($emailArray)!=0){
        echo "t";
    }
    else{
        $add="INSERT INTO `details`(`email`, `password`) VALUES ('$email','$pass')";
        if($query1 = mysqli_query($link, $add)){
            echo "posted";
        }
    }
      
}
$_SESSION['email'] = $email;
?>
<?php
session_start();
$email = $_SESSION['email'];
require("connect.php");
$addline1 = $_POST['addline1'];
$addline2 = $_POST['addline2'];
$state = $_POST['state'];
$city = $_POST['city'];
$pincode = $_POST['pincode'];
$sql1 = "UPDATE `details` SET `addline1`='$addline1',`addline2`='$addline2',`state`='$state', `city`='$city', `pincode`='$pincode' WHERE `email`='$email'";
if($query = mysqli_query($link, $sql1)){
    echo $email;
}
?>
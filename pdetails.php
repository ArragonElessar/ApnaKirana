<?php
session_start();
require("connect.php");
$email = $_SESSION['email'];
$name = $_POST['name'];
$mobile = $_POST['mobile'];
$addline1 = $_POST['addline1'];
$addline2 = $_POST['addline2'];
$state = $_POST['state'];
$city = $_POST['city'];
$pincode = $_POST['pincode'];
$sql1 = "UPDATE `details` SET `fullname`='$name',`mobile`='$mobile',`addline1`='$addline1',`addline2`='$addline2',`state`='$state', `city`='$city', `pincode`='$pincode' WHERE `email`='$email'";
if($query = mysqli_query($link, $sql1)){
    echo $email;
}
?>
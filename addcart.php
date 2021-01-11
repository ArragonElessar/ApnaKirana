<?php
    session_start();
    $email = $_SESSION['email'];
    require("connect.php");
    $pname = $_POST['name'];
    $qty = $_POST['quantity'];
    $rate = $_POST['rate'];
    $val = floatval($qty)*floatval($rate);
    $sql = "INSERT INTO `cart`(`email`, `name`,`rate`, `quantity`, `value`) VALUES ('$email','$pname','$rate','$qty','$val')";
    if(mysqli_query($link,$sql)){
        echo "a";
        echo $val;
    }
?>
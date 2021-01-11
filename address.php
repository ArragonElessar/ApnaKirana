<?php
session_start();
$email = $_SESSION['email'];
require("connect.php");
if(isset($_POST['data'])){
    $sql = "SELECT `addline1`,`addline2`,`city`,`state`,`pincode` FROM `details` WHERE `email`='$email'";
    if($q = mysqli_query($link, $sql)){
        while($address = mysqli_fetch_assoc($q)){
            foreach($address as $key=>$value){
                echo $value."?";
            }
        }
    }
}
?>
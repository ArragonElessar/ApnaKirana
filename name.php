<?php
session_start();
$email = $_SESSION['email'];
require("connect.php");
if(isset($email)){    
    $sql = "SELECT `fullname` FROM `details` WHERE `email`='$email'";
    if($q = mysqli_query($link, $sql)){
        while($name = mysqli_fetch_assoc($q)){
            foreach($name as $key=>$value){
                echo $value;
            }
        }
    }
}
?>
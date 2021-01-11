<?php
session_start();
require("connect.php");
if (isset($_SESSION['email'])) {
    $email = $_SESSION['email'];
    $sql = "SELECT `name`,`rate`,`quantity`,`value` FROM `cart` WHERE `email`='$email'";
    if ($query = mysqli_query($link, $sql)) {
        while ($cart = mysqli_fetch_assoc($query)) {
            foreach($cart as $key=>$value){
                $cartobject[] = $cart; 
            }
           
        }
        echo json_encode($cartobject);
    }
} else {
    echo 't';
}

<?php
session_start();
require_once('connect.php');
if (isset($_POST['email'])) {
    $em = $_POST['email'];
    $sql2 = "SELECT `pincode` FROM `details` WHERE `email`='$em'";
    if ($q = mysqli_query($link, $sql2)) {
        while ($pin = mysqli_fetch_assoc($q)) {
            foreach ($pin as $key => $value) {
                echo $value;
            }
        }
    }
}
?>

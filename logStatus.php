<?php
    session_start();
    $email = $_SESSION['email'];
    if(isset($email)){
        echo $email;
    }
?>
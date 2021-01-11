<?php
    $link = mysqli_connect('localhost','root','','maindb');
    if(!isset($link)){
        echo "Connection Error";
    }
?>
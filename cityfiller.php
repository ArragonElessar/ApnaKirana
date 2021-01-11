<?php

    require_once("connect.php");
    $state = $_POST['state'];
    $sql2 = "SELECT `City` FROM `citydata` WHERE `State` = '$state'";
    if($q = mysqli_query($link,$sql2)){
        while($cityArray = mysqli_fetch_assoc($q)){
            echo $cityArray['City'].'9';
        }
    }
?>
<?php
session_start();
require("connect.php");
$data = $_POST['data'];
$fetcher = "SELECT DISTINCT `state` FROM `citydata`";
if ($result = mysqli_query($link, $fetcher)) {
    while($stateArray = mysqli_fetch_assoc($result)){
        echo $stateArray['state']."8";     
    } 
}
?>

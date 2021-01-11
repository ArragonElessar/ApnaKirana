<?php
require("connect.php");
if (isset($_POST['search'])) {
    $text = $_POST['search'];
    $sql = "SELECT `name` FROM `products`";
    if ($q = mysqli_query($link, $sql)) {
        while ($nameArray = mysqli_fetch_assoc($q)) {


            foreach ($nameArray as $key => $value) {
                $names[] =  $value;
            }
            $hint = "";

            // lookup all hints from array if $q is different from ""
            if ($text !== "") {
                $text = strtolower($text);
                $len = strlen($text);
                foreach ($names as $name) {
                    if (stristr($text, substr($name, 0, $len))) {
                        if ($hint === "") {
                            $hint = $name;
                        } else {
                            $hint .= "?$name";
                        }
                    }
                }
            }
        }
        // Output "no suggestion" if no hint was found or output correct values
        echo $hint === "" ? "no suggestion" : $hint."?";
    }
} else {
    echo "Not Received";
}

<?php
include 'config.php';
if (isset($_GET['uid']) && $_GET['uid'] != "") {
    $uid = mysqli_real_escape_string($conn, $_GET['uid']);
    
    $res = mysqli_query($conn, "DELETE FROM qna WHERE uid = '$uid'");
    header("Location: all");
} else {
    header("Location: all");
}



?>
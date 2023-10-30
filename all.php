<?php
include 'config.php';

// Query to get distinct 'ans'
$res = mysqli_query($conn, "SELECT DISTINCT ans FROM qna ORDER BY id DESC");

function getQues($conn, $ans) {
    $ans = mysqli_real_escape_string($conn, $ans);
    $data = mysqli_query($conn, "SELECT * FROM qna WHERE ans = '$ans'");
    return $data;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Master</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="all-qna">
        <h3>All Data <a href="add">Add Data</a></h3>
        <?php 
        if ($res && mysqli_num_rows($res) > 0) {
            while ($row = mysqli_fetch_assoc($res)) {
                $quesData = getQues($conn, $row['ans']);
        ?>
                <div class="ans-block">
                    <h4><?= htmlspecialchars($row['ans']) ?></h4>
                    <div>
                        <?php 
                        if ($quesData && mysqli_num_rows($quesData) > 0) {
                            while ($quesRow = mysqli_fetch_assoc($quesData)) {
                                $uid = htmlspecialchars($quesRow['uid']);
                                $ques = htmlspecialchars($quesRow['ques']);
                                echo '<p class="ques-row">' . $ques . '<span><a href="edit?uid='.$uid.'">Edit</a><a href="delete?uid='.$uid.'">Delete</a></span></p>';
                            }
                        }
                        ?>
                    </div>
                </div>
        <?php 
            }
        }
        ?>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"
        integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="script.js"></script>
</body>
</html>

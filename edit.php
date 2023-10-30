<?php
include 'config.php';
if (isset($_GET['uid']) && $_GET['uid'] != "") {
    $uid = mysqli_real_escape_string($conn, $_GET['uid']);
    
    $res = mysqli_query($conn, "SELECT * FROM qna WHERE uid = '$uid'");
    if (mysqli_num_rows($res) > 0) {
        $data = mysqli_fetch_assoc($res);
        $ques = $data['ques'];
        $ans = $data['ans'];
    } else {
        $ques = "Error";
        $ans = "Error";
    }
} else {
    header("Location: all");
}
if (isset($_POST['update'])) {
    $ques = mysqli_real_escape_string($conn, $_POST['ques']);
    $ans = mysqli_real_escape_string($conn, $_POST['ans']);
    $uid = mysqli_real_escape_string($conn, $_GET['uid']); // Make sure to sanitize user input

    $res = mysqli_query($conn, "UPDATE qna SET ques = '$ques', ans = '$ans' WHERE uid = '$uid'");
    if (!$res) {
        die("Error: " . mysqli_error($conn)); // Check for query errors
    }
    header("Location: all");
    exit();
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
    <div class="add-qna">
        <h3>Edit Data <a href="all">All Data</a></h3>
        <form action="edit?uid=<?php echo $_GET['uid']; ?>" method="post">
            <div class="qna-inputs">
                <div class="single-input">
                    <input value="<?= $ques ?>" required type="text" name="ques" class="qna-input" placeholder="Question">
                </div>
            </div>
            <input value="<?= $ans ?>" required name="ans" type="text" class="qna-ans" placeholder="Answer">
            <button type="submit" class="submit-form" name="update">Update</button>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="script.js"></script>
</body>
</html>

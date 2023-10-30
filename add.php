<?php
include 'config.php';
function generateRandomString($length = 15) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[random_int(0, $charactersLength - 1)];
    }
    return $randomString;
}
if (isset($_POST['submit'])) {
    $ques = $_POST['ques'];
    $ans = $_POST['ans'];
    for ($i = 0; $i < count($ques); $i++) {
        $quesValue = mysqli_real_escape_string($conn, $ques[$i]);
        $ansValue = mysqli_real_escape_string($conn, $ans); 
        // Generate random string separately
        $uid = generateRandomString();
        $res = mysqli_query($conn, "INSERT INTO qna (ques, ans, uid) VALUES ('$quesValue', '$ansValue', '$uid')");
        if (!$res) {
            die("Error: " . mysqli_error($conn)); // Check for query errors
        }
    }
    header("Location: add");
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
        <h3>Add Data <a href="all">All Data</a></h3>
        <form  action="add" method="post">
            <div class="qna-inputs">
                <div class="single-input">
                <input autofocus="true" required type="text" name="ques[]" class="qna-input" placeholder="Question 1">
                </div>
            </div>
            <button type="button" class="qna-btn">Add</button>
            <button disabled type="button" class="closeall-btn">Close All</button>
            <input required name="ans" type="text" class="qna-ans" placeholder="Answer">
            <button type="submit" class="submit-form" name="submit">Save</button>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="script.js"></script>
</body>
</html>
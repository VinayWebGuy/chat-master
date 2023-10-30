<?php
include 'config.php';

$res = mysqli_query($conn, "SELECT * from chat order by id asc");
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
    <form id="chat-form" class="chat-box">
        <div class="chat-head">Chat Master</div>
        <div class="chat-body">
            <?php
if (mysqli_num_rows($res) > 0) {
    while ($row = mysqli_fetch_assoc($res)) {
?>
            <div class="msg-container right">
                <div class="user-msg msg"><span><?= $row['user_ques']; ?></span></div>
            </div>
            <div class="msg-container left">
                <div class="bot-msg msg">
                    <img src="bot.png" alt="">
                    <span><?= $row['bot_reply']; ?></span>
                </div>
            </div>
            <?php
    }
}
else {
    echo "<p class='no-msg'>No messages</p>";
}
?>

        </div>
        <div class="chat-foot">
            <input autofocus="true" id="user-msg" type="text"> <button type="submit">Send</button>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"
        integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="script.js"></script>
</body>

</html>
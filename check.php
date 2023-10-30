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

if (isset($_POST['msg'])) {
    $msg = $_POST['msg'];
    $new_msg = strtolower($msg);

    $check = mysqli_prepare($conn, "SELECT ans FROM qna WHERE LOWER(ques) = ?");
    mysqli_stmt_bind_param($check, "s", $new_msg);
    mysqli_stmt_execute($check);
    $result = mysqli_stmt_get_result($check);

    if (mysqli_num_rows($result) > 0) {
        $ans = mysqli_fetch_assoc($result);
        $bot_reply = $ans['ans'];
    } else {
        $bot_reply = "No reply found";
    }

    $uid = generateRandomString();

    $insert_query = mysqli_prepare($conn, "INSERT INTO chat (user_ques, bot_reply, uid) VALUES (?, ?, ?)");
    mysqli_stmt_bind_param($insert_query, "sss", $msg, $bot_reply, $uid);
    mysqli_stmt_execute($insert_query);

    echo $bot_reply;
}
?>

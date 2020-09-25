<?php

if (isset($_POST['signup-submit'])) {
    require 'dbhandler.php';

    $uname = $_POST['uname'];
    $email = $_POST['email'];
    $pwd = $_POST['pwd'];
    $con_pwd = $_POST['con-pwd'];
    $lname = $_POST['lname'];
    $fname = $_POST['fname'];

    if ($pwd !== $con_pwd) {
        header("Location: ../signup.php?error=diffPasswords&fname=" . $fname . "&lname=" . $lname . "&uname=" . $uname);
        exit();
    } else {
        $sql = "SELECT uname FROM users WHERE uname=?";
        $stmt = mysqli_stmt_init($conn);

        if (!mysqli_stmt_prepare($stmt, $sql)) {
            header("Location: ../signup.php?error=SQLInjection");
            exit();
        } else {
            mysqli_stmt_bind_param($stmt, "s", $uname);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
            $check = mysqli_stmt_num_rows($stmt);

            if ($check > 0) {
                header("Location: ../signup.php?error=UsernameTaken&fname=" . $fname . "&lname=" . $lname . "&uname=" . $uname);
                exit();
            } else {
                $sql = "INSERT INTO users (lname, fname, email, uname, password) VALUES (?, ?, ?, ?, ?)";
                $stmt = mysqli_stmt_init($conn);

                if (!mysqli_stmt_prepare($stmt, $sql)) {
                    header("Location: ../signup.php?error=SQLInjection");
                    exit();
                } else {
                    $hashedPass = password_hash($pwd, PASSWORD_BCRYPT);

                    mysqli_stmt_bind_param($stmt, "sssss", $lname, $fname, $email, $uname, $hashedPass);
                    mysqli_stmt_execute($stmt);
                    mysqli_stmt_store_result($stmt);

                    header("Location: ../signup.php?signup=success");
                    exit();
                }
            }
        }
        mysqli_stmt_close($stmt);
        mysqli_close($conn);
    }
} else {
    header("Location: ../signup.php");
    exit();
}

<?php
session_start();
include('config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $interest = $_POST['interest'];

    $sql_check = "SELECT interest_id FROM interests WHERE interest_name = ?";
    $stmt_check = $conn->prepare($sql_check);
    $stmt_check->bind_param("s", $interest);
    $stmt_check->execute();
    $result_check = $stmt_check->get_result();

    if ($result_check->num_rows > 0) {
        $row = $result_check->fetch_assoc();
        $interest_id = $row['interest_id'];

        $sql_insert = "INSERT INTO users (username, interest_id) VALUES (?, ?)";
        $stmt_insert = $conn->prepare($sql_insert);
        $stmt_insert->bind_param("si", $username, $interest_id);
        $stmt_insert->execute();

        $_SESSION['username'] = $username;
        header("Location: ../index.php");
        exit();
    }
}

$conn->close();
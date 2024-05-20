<?php
session_start(); // Mulai sesi
include('config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];

    $sql = "SELECT * FROM users WHERE username = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $_SESSION['username'] = $username;
        header("Location: ../index.php");
        exit();
    } else {
        header("Location: ../login2.php?username=" . urlencode($username));
        exit();
    }

    $stmt->close();
}

$conn->close();
?>
<?php
session_start();
if (isset($_SESSION['username'])) {
    header("Location: index.php");
    exit();
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/login.css">
</head>

<body>
    <video autoplay loop muted plays-inline class="back-video" style="filter: blur(5px);">
        <source src="image/video3.mp4" type="video/mp4">
    </video>
    <main class="contect2" style="text-align: center; color: #fff;">
        <form id="loginForm" action="include/action_page.php" method="post">
            <input type="hidden" name="username" value="<?php echo isset($_GET['username']) ? htmlspecialchars($_GET['username']) : ''; ?>">
            <div class="interest what">
                <label for="interest">What are your interests?</label><br>
                <select name="interest" id="interestSelect" required>
                    <option selected disabled>I'm interested in</option>
                    <option value="Japan">Japan</option>
                    <option value="Games">Games</option>
                    <option value="Programming">Programming</option>
                </select>
            </div>
            <br>
            <p class="info">Press enter to continue.</p>
        </form>
    </main>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            document.addEventListener('keypress', function(e) {
                if (e.key === 'Enter') {
                    document.getElementById('loginForm').submit();
                }
            });
        });
    </script>
</body>
</html>
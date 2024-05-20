<?php
session_start();
$username = isset($_SESSION['username']) ? $_SESSION['username'] : '';
?>
<!DOCTYPE html>
<html>

<head>
    <title>Home</title>
    <link rel="stylesheet" href="css/main.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <div class="hero">
        <nav class="indexnav">
            <a href="index.php">Home</a>
            <a href="gallery.html">Gallery</a>
            <a href="blog.php">Blog</a>
            <a href="contact.html">Contact</a>
            <a href="logout.php">Logout</a>
        </nav>
        <video autoplay loop muted plays-inline class="back-video">
            <source src="image/video3.mp4" type="video/mp4">
        </video>
        <div class="content">
            <h1>
                <a class="typewrite" data-period="2000" data-type='[ "Hello <?php echo $username; ?>.", "Welcome to My Website"]'>
                    <span class="wrap"></span>
                </a>
            </h1>
        </div>
        <div class="bottom">
            <h2>Chezkiel Rengkung</h2>
        </div>
    </div>
    <script src="js/index.js"></script>
</body>

</html>
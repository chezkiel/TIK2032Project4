<?php
include('include/config.php');
include('include/session.php');
$article_id = isset($_GET['id']) ? intval($_GET['id']) : 0;

$sql = "SELECT * FROM articles WHERE article_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $article_id);
$stmt->execute();
$result = $stmt->get_result();

$article = $result->fetch_assoc();
$stmt->close();
$conn->close();
?>
<!DOCTYPE html>
<html>

<head>
    <title><?php echo htmlspecialchars($article['title']); ?></title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/article.css">
</head>

<body>
<nav class="indexnav">
        <a href="index.php">Home</a>
        <a href="gallery.html">Gallery</a>
        <a href="blog.php">Blog</a>
        <a href="contact.html">Contact</a>
    </nav>
    <main class="content" style="color: #fff;">
        <h1><?php echo htmlspecialchars($article['title']); ?></h1>
        <div class="article-content">
            <?php echo nl2br(htmlspecialchars($article['content'])); ?>
        </div>
    </main>
</body>

</html>
<?php
session_start();
include('include/config.php');

$username = isset($_SESSION['username']) ? $_SESSION['username'] : '';
$sql_interest = "SELECT interests.interest_id FROM users
                JOIN interests ON users.interest_id = interests.interest_id
                WHERE username = ?";
$stmt_interest = $conn->prepare($sql_interest);
$stmt_interest->bind_param("s", $username);
$stmt_interest->execute();
$result_interest = $stmt_interest->get_result();
$row_interest = $result_interest->fetch_assoc();
$interest_id = $row_interest['interest_id'];

$sql_articles = "SELECT * FROM articles WHERE interest_id = ?";
$stmt_articles = $conn->prepare($sql_articles);
$stmt_articles->bind_param("i", $interest_id);
$stmt_articles->execute();
$result_articles = $stmt_articles->get_result();
?>

<!DOCTYPE html>
<html>

<head>
    <title>Blog</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/blog.css">
</head>

<body>
    <nav class="indexnav">
        <a href="index.php">Home</a>
        <a href="gallery.html">Gallery</a>
        <a href="blog.php">Blog</a>
        <a href="contact.html">Contact</a>
        <a href="logout.php">Logout</a>
    </nav>
    <video autoplay loop muted plays-inline class="back-video" style="filter: blur(3px);">
        <source src="image/video3.mp4" type="video/mp4">
    </video>
    <main class="contect2" style="color: #fff;">
        <h2 style="text-align: center; font-size: 2em; margin-bottom: -20px;">Blog</h2>
        <section class="hero-section">
            <div class="card-grid">
                <?php while ($article = $result_articles->fetch_assoc()) { ?>
                    <a class="card" href="article.php?id=<?php echo $article['article_id']; ?>">
                        <div class="card__background" style="background-image: url(<?php echo htmlspecialchars($article['image_url']); ?>)">
                        </div>
                        <div class="card__content">
                            <h3 class="card__heading"><?php echo htmlspecialchars($article['title']); ?></h3>
                        </div>
                    </a>
                <?php } ?>
            </div>
        </section>
    </main>
</body>

</html>

<?php
$stmt_interest->close();
$stmt_articles->close();
$conn->close();
?>
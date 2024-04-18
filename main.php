<?php 
session_start();
if(isset($_SESSION["user_id"])){
    include("database/database.php");

    $sql = "SELECT * FROM user WHERE id = {$_SESSION["user_id"]}";

    $result = $mysqli->query($sql);

    if ($result) {
        $user = $result->fetch_assoc();
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <header class="header">
        <a href="home/home.html" class="logo">Ergonomix. </a>

        <nav class="navbar">
                <a href="home/home.html">Home</a>
                <a href="home/about.html">About</a>
        </nav>
    </header>
    <div class="php">
        <?php if(isset($user)): ?>
            <p id="welcome">Welcome, <p id="nameofuser"><?= htmlspecialchars($user["name"]) ?></p></p>
            <p id="logoutbtn"><a href="logout/logout.php">Logout</a></p>
            <div id="buttons">
                <button id="calendar">
                    <img src="calendar.png" id="calendar_img">
                    <h>See Calendar</h>
                </button>
            </div>
        <?php else: 
            header("Location: home/home.html");
            exit();
            ?>
    
        <?php endif; ?>
    </div>
    <div class="services">
    </div>
</body>
</html>
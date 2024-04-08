<?php

$is_invalid = false;

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $mysqli = require __DIR__ . "../database/database.php";
    $sql = sprintf("SELECT * FROM user
                    WHERE email = '%s'",
                    $mysqli->real_escape_string($_POST["email"]));

    $result = $mysqli->query($sql);

    $user = $result->fetch_assoc();

    if ($user) {
        if ( password_verify($_POST["password"], $user["password_hash"])) {
            session_start();
            session_regenerate_id();
            $_SESSION["user_id"] = $user["id"];
            header("Location: ../main.php");
            exit;
        }
    }
    $is_invalid = true;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://unpkg.com/just-validate@latest/dist/just-validate.production.min.js" defer></script>
    <script src="../js/validation.js" defer></script>
    <title>Log In</title>
    <link rel="stylesheet" href="../signup/signup.css">
</head>
<body>
    <header class="header">
        <a href="../home/home.html" class="logo">Ergonomix. </a>

        <nav class="navbar">
            <a href="../home/home.html">Home</a>
            <a href="../home/about.html">About</a>

        </nav>
    </header>
    <div class="container">
        <h1>Log In</h1>

        <?php if($is_invalid): ?>
            <em style="color: #ff0000">Invalid Login</em>
        <?php endif; ?>

        <form method="post">
            <input type="email" name="email" id="email" placeholder="Email"
                    value="<?= htmlspecialchars($_POST["email"] ?? "") ?>">
            <input type="password" name="password" id="password" placeholder="Password">

            <button>Log In</button>
            <a class="new" href="../signup/signup.html">Don't have an account? Sign Up</a>
        </form>
    </div>
</body>
</html>
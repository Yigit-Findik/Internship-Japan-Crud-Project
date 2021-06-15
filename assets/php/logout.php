<?php
    session_start();
    session_destroy();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/tailwind.css">
    <title>Document</title>
</head>
<body>
    <div class="w-full h-40">
        <div class="mx-auto w-40 h-40 mt-7">
            <img class="w-40 h-40" src="../images/IJPv3.svg">
        </div>
    </div>
    <div class="mx-auto mt-20 w-96 h-40">
        <form method="post">
            <h1 class="text-5xl ml-16">Logged out</h1>
            <button name="logoutBTN" href="index.php" class="mt-10 ml-28 w-40 h-10 rounded-lg text-white transition duration-300 bg-original-blue hover:bg-blue-700 transform">Back to homepage</button>
        </form>
    </div>
    <?php
        if (isset($_POST['logoutBTN'])) {
            header('location: index.php?Attention=Logout was successfull');
        }
    ?>
</body>
</html>

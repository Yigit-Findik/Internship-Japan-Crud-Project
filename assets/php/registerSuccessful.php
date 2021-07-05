<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/tailwind.css">
    <title>Your account has been registered!</title>
</head>
<body>
    <div class="w-full h-40">
        <div class="mx-auto w-72 h-72 mt-12">
            <img class="ml-6 " src="../images/verified_undraw.svg">
        </div>
    </div>
    <div class="mx-auto mt-40 w-130 h-40">
        <form method="post">
            <h1 class="text-5xl ml-10 w-140">Successfully registered!</h1>
            <div class="flex flex-wrap mt-10">
                <button name="backToHomeBTN" href="index.php" class="ml-28 w-40 h-10 rounded-lg text-white transition duration-300 bg-original-blue hover:bg-blue-700 transform">Back to homepage</button>
                <button name="loginBTN" href="index.php" class="ml-5 w-40 h-10 rounded-lg text-white transition duration-300 bg-original-blue hover:bg-blue-700 transform">Login</button>
            </div>
        </form>
    </div>
    <?php
        if (isset($_POST['backToHomeBTN'])) {
            header('location: index.php');
        }
        elseif (isset($_POST['loginBTN'])) {
            header('location: login.php');
        }
    ?>
</body>
</html>
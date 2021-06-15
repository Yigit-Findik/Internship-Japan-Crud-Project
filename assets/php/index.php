<?php
    include_once("../includes/connect.php");
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/tailwind.css">
    <link rel="stylesheet" href="../css/styles.css">
    <title>Welcome to Internship Japan</title>
</head>
    <!-- background image has yet to be found due its height and width -->
    <div class="w-full h-laptop-full bg-red-200 background-index">
        <header class="w-full h-40">
            <div class="ml-40 pt-2.5 flex flex-wrap">
                <a href="index.php"><img class="w-40 h-40" src="../images/IJPv3.svg"></a>
                <div class="flex flex-wrap pt-14 w-86 ml-116">
                    <a class="ml-56 text-lg transition duration-150 text-white hover:text-original-blue transform" href="internships.php">Internships</a>
                    <a class="ml-7 text-lg transition duration-150 text-white hover:text-original-blue transform" href="internship-register.php">Company/NPO's register</a>
                    <?php
                        if (isset($_SESSION['intern_id'])) {
                            echo '<p>ehhehehehheeh</p>';
                        }elseif (!isset($_SESSION['intern_id'])) {
                            echo '<a class="ml-7 text-lg transition duration-150 text-white hover:text-original-blue transform" href="login.php">Login</a>';
                        }
                    ?>
                </div>
            </div>
        </header>

        <div class="w-full h-auto">
            <div class="w-130 h-32 ml-44 mt-20">
                <h1 class="text-6xl text-blue-400">Searching for an internship in Japan?</h1>
            </div>
            <div class="h-14 ml-44">
                <h1 class="ml-200 pt-9 w-40 h-40 transform rotate-12 text-blue-200">Search now!</h1>
            </div>

            <div class="flex flex-wrap mx-auto w-130 h-auto rounded-xl bg-white shadow-lg border-2 hover:border-blue-200">
                <img class="w-6 h-6 mt-3 ml-2.5" src="../images/loupe.svg">
                <input class="h-7 w-11/12 py-6 px-2.5 rounded-xl">
                <?php
                #if image clicked than search what the search keyword was to get the most relevant interns
                ?>
            </div>
        </div>
    </div>

    <div class="w-full h-80">
        <div class="mx-auto w-96 h-full">
            <h1 class="text-3xl pt-56 ml-16">Highlighted intern</h1>
            <p class="ml-20 pt-2.5">Might be interesting for you</p>
        </div>
    </div>
    <div class="w-full h-16"></div>
    <div class="w-full h-laptop-full bg-red-200">
        <!-- php roll out 6 companies/npos -->
    </div>
    <div class="w-full h-20 bg-green-200">
        <div class="w-52 h-20 mx-auto bg-blue-200">
            <button name="viewAllBTN" class="w-36 h-12 ml-5 rounded-lg bg-original-blue"></button>
        </div>
    </div>
<body>

</body>
</html>

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
    <title>Internship List</title>
</head>

<body>
    <div class="w-full h-auto">

        <header class="w-full h-40">
            <div class="ml-40 pt-2.5 flex flex-wrap">
                <a href="index.php"><img class="w-40 h-40" src="../images/IJPv3.svg"></a>
                <div class="flex flex-wrap pt-14 w-86 h-10 ml-100">
                    <a class="ml-56 text-lg transition duration-150 text-original-blue hover:text-blue-700 transform" href="entityList.php">Internships</a>
                    <a class="ml-7 text-lg transition duration-150 text-original-blue hover:text-blue-700 transform" href="internship-register.php">Company/NPO's register</a>
                    <?php
                    if (isset($_SESSION['intern_id'])) {
                        echo "<a class='ml-7 text-lg transition duration-150 text-original-blue hover:text-blue-70 transform' href='../php/account.php'>Account</a>";
                        echo "<a class='ml-7 text-lg transition duration-150 text-original-blue hover:text-blue-70 transform' href='../php/logout.php'>Logout</a>";
                        //echo '<img class="2xl:rounded-lg w-36 h-24 mt-7" src="../images/user_no_image.png">';
                    }elseif (!isset($_SESSION['intern_id'])) {
                        //echo '<a class="ml-7 text-lg transition duration-150 text-white hover:text-original-blue transform" href="login.php">Login</a>';
                        echo '<a class="ml-5 text-lg transition duration-150 text-original-blue hover:text-blue-700 transform" href="login.php">Login</a>';
                    }
                    ?>
                </div>
            </div>
        </header>
        <div class="w-full h-10"></div>
        <div class="w-200 mx-auto h-auto">
            <?php
                //searching sql
                $sessieVAR = $_SESSION["search_input"];
                $stmt = $connect->prepare("SELECT * FROM entity WHERE entity_name LIKE :input");
                $sessieVAR = "%$sessieVAR%";
                $stmt->bindParam(":input",$sessieVAR);
                $stmt->execute();

                //rolling out all information
                foreach($stmt as $s) {
                    echo "<div class='w-120 h-auto mx-auto mb-2'>";
                        echo "<div class='w-full h-10 mt-2 bg-gray-300 border-2 border-gray-200'>";
                            echo "<p class='mt-1 ml-2.5 font-bold'>";
                                echo $s['entity_name'];
                            echo "</p>";
                        echo "</div>";

                        echo "<div class='w-120 h-auto bg-white mt-2 mb-2 border-2 border-gray-200'>";
                            echo "<div class='flex flex-wrap'>";
                                echo "<p class='ml-2 text-2xl'>";
                                    echo $s['contact_firstname'];
                                echo "</p>";
                                echo "<p class='ml-2 text-2xl'>";
                                    echo $s['contact_middlename'];
                                echo "</p>";
                                echo "<p class='ml-2 text-2xl'>";
                                    echo $s['contact_surname'];
                                echo "</p>";
                            echo "</div>";
                            echo "<p class='ml-2 mb-1.5 text-xl'>";
                                echo $s['position'];
                            echo "</p>";
                            echo "<p class='ml-2 mb-1.5'>";
                                echo $s['position_text'];
                            echo "</p>";
                        echo "</div>";

                        echo "<div class='w-full h-10 bg-gray-300 border-2 border-gray-200'>";
                            echo "<form method='post'>";
                                echo "<button class='w-20 h-7 ml-2 mt-1 rounded-md transition duration-300 bg-original-blue hover:bg-blue-700 transform text-white' name='mail_us_btn'>mail us</button>";
                            echo "</form>";
                            if (isset($_POST['mail_us_btn']))
                        echo "</div>";
                    echo "</div>";
                }
            ?>
        </div>

    </div>
</body>
</html>

<?php
    session_start();

    $charset = "utf8mb4";
    $username = "root";
    $password = "";
    $database = "mysql:host=localhost;dbname=japan_intern;chars=$charset";



    try {
        $connect = new PDO($database, $username, $password);

        $connect -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //echo "Er is connectie!!";
    }
    catch(PDOException $e) {
        echo $e->getMessage();
        die("Sorry, database probleem");
    }
?>

<?php
    session_start();

    $charset = "utf8mb4";
    $username = "root";
    $password = "eRLSTjCnW4Xd28g";
    $database = "mysql:host=localhost;dbname=teamuitje;chars=$charset";
    


    try {
        $connect = new PDO($database, $username, $password);
        $connect -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch(PDOException $e) {
        echo $e->getMessage();
        die("Sorry, database probleem");
    }
?>
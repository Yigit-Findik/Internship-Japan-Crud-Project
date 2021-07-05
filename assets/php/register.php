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
    <title>Intership Japan - Register to get started</title>
</head>
<body class="flex flex-wrap">
    <div class="h-laptop-full w-1/2">
        <div class="w-full h-28"></div>
        <div class="ml-44 pt-2.5">
            <form method="post">
                <h1 class='text-7xl'>Register</h1>
                <div class='flex flex-wrap w-100 h-14 mt-5'>
                    <div class='w-1/2 h-full'>
                        <p class='text-gray-700 text-opacity-50'>First name</p>
                        <div class='bg-white w-11/12 rounded-md border-gray-200 border-2'>
                            <input name='firstnameINP' class='w-11/12 ml-2 h-7'>
                        </div>
                    </div>
                    <div class='w-1/2 h-full'>
                        <p class='text-gray-700 text-opacity-50'>Last name</p>
                        <div class='bg-white w-11/12 rounded-md border-gray-200 border-2'>
                            <input name='lastnameINP' class='w-11/12 ml-2 h-7'>
                        </div>
                    </div>
                </div>

                <div class='w-100 h-14 mt-2'>
                    <p class='text-gray-700 text-opacity-50'>Email address</p>
                    <div class='bg-white w-97.75 rounded-md border-gray-200 border-2'>
                        <input name='emailINP' class='w-11/12 h-7 rounded-md ml-1'>
                    </div>
                </div>

                <div class='w-100 h-14 mt-2'>
                    <p class='text-gray-700 text-opacity-50'>Username (only letters, numbers and underscores)</p>
                    <div class='bg-white w-97.75 rounded-md border-gray-200 border-2'>
                        <input name='usernameINP' class='w-11/12 h-7 rounded-md ml-1'>
                    </div>
                </div>

                <div class='w-100 h-14 mt-2'>
                    <p class='text-gray-700 text-opacity-50'>Password (min 6 chars)</p>
                    <div class='bg-white w-97.75 rounded-md border-gray-200 border-2'>
                        <input name='passwordINP' class='w-11/12 h-7 rounded-md ml-1'>
                    </div>
                </div>
                <button name='registerButton' class='w-40 h-10 mt-5 rounded-2xl text-white transition duration-300 bg-original-blue hover:bg-blue-700 transform'>Register</button>

            </form>

            <?php

                if (isset($_POST['registerButton'])) {
                    $fname = $_POST['firstnameINP'];
                    $lname = $_POST['lastnameINP'];
                    $emailVAR = $_POST['emailINP'];
                    $uname = $_POST['usernameINP'];
                    $pword = $_POST['passwordINP'];

                    if (empty($uname) or empty($fname) or empty($lname) or empty($emailVAR) or empty($pword)) {
                        session_destroy();
                        header('location: register.php?error=Fill everything in!');
                    }
                    elseif (!empty($uname) and !empty($fname) and !empty($lname) and !empty($emailVAR) and !empty($pword)) {

                        $user_id_worth = 2;

                        $passwordHASH = password_hash($pword,PASSWORD_DEFAULT);

                        $sql = "INSERT INTO intern (user_id, firstname, surname, email, username, pass_word) 
                        VALUES (:user_id,:firstname,:surname,:email,:username,:pass_word)";
                        $stmt = $connect->prepare($sql);
                        $stmt->bindParam(":user_id", $user_id_worth);
                        $stmt->bindParam(":firstname", $fname);
                        $stmt->bindParam(":surname", $lname);
                        $stmt->bindParam(":email", $emailVAR);
                        $stmt->bindParam(":username", $uname);
                        $stmt->bindParam(":pass_word", $passwordHASH);
                        $stmt->execute();
                        header("Location: registerSuccessful.php");
                    }
                }

            ?>
            <div class="w-80 h-6 mt-10 flex flex-wrap">
                <p class="text-sm mt-0.5">Or register with</p>
                <a href="https://www.facebook.com/">
                    <svg class="w-5 h-5 mt-0.5 ml-5 transition duration-150 fill-current text-blue-600 hover:text-blue-800 transform" role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Facebook</title>
                        <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954
                        10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235
                        2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
                    </svg>
                </a>
                <a href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin">
                    <svg class="w-5 h-5 mt-0.5 ml-2.5 transition duration-150 fill-current text-red-600 hover:text-red-800 transform" role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Google</title>
                        <path d="M12.48 10.92v3.28h7.84c-.24 1.84-.853 3.187-1.787 4.133-1.147 1.147-2.933 2.4-6.053
                            2.4-4.827 0-8.6-3.893-8.6-8.72s3.773-8.72 8.6-8.72c2.6 0 4.507 1.027 5.907 2.347l2.307-2.307C18.747
                            1.44 16.133 0 12.48 0 5.867 0 .307 5.387.307 12s5.56 12 12.173 12c3.573 0 6.267-1.173 8.373-3.36
                            2.16-2.16 2.84-5.213 2.84-7.667 0-.76-.053-1.467-.173-2.053H12.48z"/>
                    </svg>
                </a>
                <a href="https://twitter.com/login?lang=en">
                    <svg class="w-5 h-5 mt-0.5 ml-2.5 fill-current transition duration-150 fill-current text-blue-400 hover:text-blue-600 transform" role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Twitter</title>
                        <path d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92
                        4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904
                        4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867
                        9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985
                        0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"/>
                    </svg>
                </a>
            </div>
        </div>
    </div>
    <div class="h-laptop-full w-1/2">
        <div class="w-full mr-44 h-28"></div>
        <img class="w-108 mt-2.5 mx-auto" src="../images/undraw_Forms_re_pkrt.svg"  alt="forms ilustration">
        <p class="ml-44 mt-18.5 text-sm">Already have an account?<a class="text-original-blue underline hover:text-blue-800 ml-1.5" href="login.php">Login here!</a></p>
    </div>
</body>
</html>
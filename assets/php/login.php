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
    <title>Intership Japan - Login or register an account</title>
</head>
<body class="flex flex-wrap">
    <div class="w-3/6 h-laptop-full">
        <div class="w-full h-40"></div>
        <img class="w-108 mt-7 mx-auto" src="../images/undraw_Fingerprint_re_uf3f(1).svg"  alt="Fingerprint ilustration">
        <div class="w-full h-40">
            <div class="mx-auto w-64 pt-16">
                <h6>Don't have an account? <a class="hover:text-blue-700 text-original-blue underline" href="register.php">Create one!</a></h6>
            </div>
        </div>
    </div>
    <div class="w-3/6 h-laptop-full">
        <div class="w-full h-40"></div>
        <div class="ml-40">

                      <form method='post' class='pt-5'>
                        <h1 class='text-7xl my-5'>Login</h1>
                        <!--username input field-->
                        <div class='w-80 h-7 border-b-2 border-gray-400 flex flex-wrap'>
                            <img class='w-5 h-5 mt-1' src='../images/user.svg'>
                            <input name='uname' class='h-6 w-5/6 ml-2 placeholder-gray-500 placeholder-opacity-50 bg-none' placeholder='username'>
                        </div>
                        <!--end username-->
                        
                        <!--password input field-->
                        <div class='mt-5 w-80 h-7 border-b-2 border-gray-400 flex flex-wrap'>
                            <img class='w-5 h-5 mt-1' src='../images/padlock.svg'>
                            <input type='password' name='pword' class='h-6 w-5/6 ml-2 placeholder-gray-500 placeholder-opacity-50 bg-none' placeholder='password'>
                        </div> 
                        <!--end password-->
                        
                        <!--checkbox not used (i messed up.)-->
                        <div class=' mt-5 w-80 h-6 flex flex-wrap'>
                            <input class='rounded-md mb-1' type='checkbox'>
                            <p class='text-xs ml-1 mt-0.5'>Remember me</p>
                            <a href='#' class='text-xs ml-32 mt-0.5 hover:text-blue-700 text-original-blue underline'>Forgot password?</a>
                        </div>
                        <!--end checkbox-->
                        <button name='loginButton' class='w-40 h-10 mt-5 rounded-2xl text-white transition duration-300 bg-original-blue hover:bg-blue-700 transform'>Login</button>
                      </form>
            <?php               ;
                #if clicked loginbutton check if input field empty
                if (isset($_POST['loginButton'])) {
                    $uname = $_POST['uname'];
                    $pword = $_POST['pword'];
                    if (empty($uname) and empty($pword)) {
                        session_destroy();
                        header("location: login.php?error=username and password is required!");
                    }
                    elseif (empty($uname)) {
                        session_destroy();
                        header("location: login.php?error=username is required!");
                    }
                    elseif (empty($pword)) {
                        session_destroy();
                        header("location: login.php?error=password is required!");
                    }

                    elseif (!empty($uname) and !empty($pword)){
                        $sql = "
                                SELECT * 
                                FROM intern 
                                WHERE username = ?";
                        $stmt = $connect->prepare($sql);
                        $stmt->execute([$_POST['uname']]);
                        $result = $stmt->fetchAll();
                        $hash = $result[0]['pass_word'];

                        if (password_verify($_POST['pword'], $hash)) {
                            $_SESSION['intern_id'] = $result[0]['intern_id'];
                            header('location: index.php');
                        }else {
                            header('location: login.php');
                        }
                    }
                }

            ?>
            <div class="w-80 h-6 mt-9 flex flex-wrap">
                <p class="text-sm mt-0.5">Or login with</p>
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
</body>
</html>
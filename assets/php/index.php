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


<body>
    <!-- background image has yet to be found due its height and width -->
    <div class="w-full h-laptop-full background-index">
        <header class="w-full h-40">
            <div class="ml-40 pt-2.5 flex flex-wrap">
                <a href="index.php"><img class="w-40 h-40" src="../images/IJPv3.svg"></a>
                <div class="flex flex-wrap pt-14 w-86 h-10 ml-100">
                    <a class="ml-56 text-lg transition duration-150 text-white hover:text-original-blue transform" href="entityList.php">Internships</a>
                    <a class="ml-7 text-lg transition duration-150 text-white hover:text-original-blue transform" href="internship-register.php">Company/NPO's register</a>
                        <?php
                        if (isset($_SESSION['intern_id'])) {
                            echo "<a class='ml-7 text-lg transition duration-150 text-white hover:text-original-blue transform' href='../php/account.php'>Account</a>";
                            echo "<a class='ml-7 text-lg transition duration-150 text-white hover:text-original-blue transform' href='../php/logout.php'>Logout</a>";
                            //echo '<img class="2xl:rounded-lg w-36 h-24 mt-7" src="../images/user_no_image.png">';
                        }elseif (!isset($_SESSION['intern_id'])) {
                            //echo '<a class="ml-7 text-lg transition duration-150 text-white hover:text-original-blue transform" href="login.php">Login</a>';
                            echo '<a class="ml-5 text-lg transition duration-150 text-white hover:text-original-blue transform" href="login.php">Login</a>';
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

    <!-- begin -->
    <div class="w-full h-custom-highlight bg-red-200">
        <!-- php roll out 6 companies/npos -->
    </div>
    <!-- end -->

    <div class="w-full h-20">
        <div class="w-52 h-20 mx-auto">
            <form method="post">
                <button name="viewAllBTN" class="w-40 h-12 ml-6 mt-4 rounded-lg text-white transition duration-300 bg-original-blue hover:bg-blue-700 transform">view all</button>
            </form>
            <?php
            if (isset($_POST['viewAllBTN'])) {
                header('location: entityList.php');
            }
            ?>
        </div>
    </div>

    <div class="w-full h-laptop-full">
        <div class="mx-auto w-130 h-full ">
            <div class="mx-auto w-full h-auto">
                <h1 class="text-4xl ml-49 pt-60">About us</h1>
                <p class="w-140 h-24 mt-20">
                    Internship Japan is a growing group of people working voluntarily (Non-Profit Organization) for the mission to establish and support a new and better system of internships in Japan.
                </p>
                <p class="w-140 h-40">
                    We at Internship Japan believe that young and highly-motivated foreigners willing to work and study in Japan can be a great asset to Japan's business world. The Japanese language is one of the key points for us, so we believe in a joint combination of internships and language education. Most importantly, we strongly believe that interns should not incur any costs for finding an internship program.
                </p>
                <p class="w-140 h-28">
                    Internship Japan officially registered as an Ippanshadanhōjin (一般社団法人), a form of non-profit organization in Japan, on the 24th of September 2014. After 2 years of rapid growth we are now ready to become even more professional with our work and support companies, organizations and internship-seekers from all over the world.
                </p>
            </div>
        </div>
    </div>

    <svg class="" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#5874FF" fill-opacity="1" d="M0,256L1440,192L1440,320L0,320Z"></path></svg>
    <div class="w-full h-36 bg-original-blue">
        <div class="w-40 h-10 mx-auto flex flex-wrap">
            <a class="ml-8 pt-5" target="_blank" href="https://www.facebook.com/internshipjapan">
                <svg class="w-5 h-5 transition duration-150 fill-current text-white hover:text-black transform" role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Facebook</title>
                    <path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954
                            10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235
                            2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/>
                </svg>
            </a>
            <a class="pt-5" target="_blank" href="https://instagram.com">
                <svg class="w-5 h-5 ml-1 fill-current transition duration-150 fill-current text-white hover:text-black transform" role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Instagram</title>
                    <path d="M12 0C8.74 0 8.333.015 7.053.072 5.775.132 4.905.333 4.14.63c-.789.306-1.459.717-2.126 1.384S.935 3.35.63
                        4.14C.333 4.905.131 5.775.072 7.053.012 8.333 0 8.74 0 12s.015 3.667.072 4.947c.06 1.277.261 2.148.558 2.913.306.788.717
                        1.459 1.384 2.126.667.666 1.336 1.079 2.126 1.384.766.296 1.636.499 2.913.558C8.333 23.988 8.74 24 12 24s3.667-.015
                        4.947-.072c1.277-.06 2.148-.262 2.913-.558.788-.306 1.459-.718 2.126-1.384.666-.667 1.079-1.335
                        1.384-2.126.296-.765.499-1.636.558-2.913.06-1.28.072-1.687.072-4.947s-.015-3.667-.072-4.947c-.06-1.277-.262-2.149-.558-2.913-.306-.789-.718-1.459-1.384-2.126C21.319
                        1.347 20.651.935 19.86.63c-.765-.297-1.636-.499-2.913-.558C15.667.012 15.26 0 12 0zm0 2.16c3.203 0 3.585.016 4.85.071 1.17.055 1.805.249 2.227.415.562.217.96.477
                        1.382.896.419.42.679.819.896 1.381.164.422.36 1.057.413 2.227.057 1.266.07 1.646.07 4.85s-.015 3.585-.074
                        4.85c-.061 1.17-.256 1.805-.421 2.227-.224.562-.479.96-.899 1.382-.419.419-.824.679-1.38.896-.42.164-1.065.36-2.235.413-1.274.057-1.649.07-4.859.07-3.211
                        0-3.586-.015-4.859-.074-1.171-.061-1.816-.256-2.236-.421-.569-.224-.96-.479-1.379-.899-.421-.419-.69-.824-.9-1.38-.165-.42-.359-1.065-.42-2.235-.045-1.26-.061-1.649-.061-4.844 0-3.196.016-3.586.061-4.861.061-1.17.255-1.814.42-2.234.21-.57.479-.96.9-1.381.419-.419.81-.689 1.379-.898.42-.166 1.051-.361 2.221-.421
                        1.275-.045 1.65-.06 4.859-.06l.045.03zm0 3.678c-3.405 0-6.162 2.76-6.162 6.162 0 3.405 2.76 6.162 6.162 6.162 3.405 0 6.162-2.76 6.162-6.162 0-3.405-2.76-6.162-6.162-6.162zM12 16c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4zm7.846-10.405c0 .795-.646 1.44-1.44 1.44-.795 0-1.44-.646-1.44-1.44 0-.794.646-1.439 1.44-1.439.793-.001 1.44.645 1.44 1.439z"/>
                </svg>
            </a>
            <a class="pt-5" target="_blank" href="https://twitter.com/login?lang=en">
                <svg class="w-5 h-5 ml-1 fill-current transition duration-150 fill-current text-white hover:text-black transform" role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Twitter</title>
                    <path d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92
                            4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904
                            4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867
                            9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985
                            0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"/>
                </svg>
            </a>
            <a class="pt-5" target="_blank" href="https://www.linkedin.com/company/internship-japan/">
                <svg class="w-5 h-5 ml-1 fill-current transition duration-150 fill-current text-white hover:text-black" role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>LinkedIn</title>
                    <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136
                        2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337
                        7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925
                        2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792
                        24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
                </svg>
            </a>
        </div>
        <div class="w-56 h-5 mx-auto mt-5">
            <p class="ml-2 text-white">©2021 Japaninternship.com</p>
        </div>
    </div>
    <script src="../js/main.js"></script>
</body>
</html>

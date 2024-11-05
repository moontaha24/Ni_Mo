<?php
session_start();
include "connection.php";
?>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
    <link rel="stylesheet" href="css1/bootstrap.min.css">
    <link rel="stylesheet" href="css1/font-awesome.min.css">
    <link rel="stylesheet" href="css1/owl.carousel.css">
    <link rel="stylesheet" href="css1/owl.theme.css">
    <link rel="stylesheet" href="css1/owl.transitions.css">
    <link rel="stylesheet" href="css1/animate.css">
    <link rel="stylesheet" href="css1/normalize.css">
    <link rel="stylesheet" href="css1/main.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css1/responsive.css">
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <?php
    include "header.php";
    ?>
    <div class="login-qz">
        <div class="error-page-int">
            <div class="text-center m-b-md custom-login">
                <h3>Welcome to login panel</h3>

            </div>
            <div class="content-error">
                <div class="hpanel">
                    <div class="panel-body">
                        <form action="" name="form1" method="post">
                            <div class="form-group">
                                <label class="control-label" for="username">Username</label>
                                <input type="text" placeholder="username" title="Please enter you username" required="" value="" name="username" id="username" class="form-control">

                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Password</label>
                                <input type="password" title="Please enter your password" placeholder="******" required="" value="" name="password" id="password" class="form-control">

                            </div>

                            <button type="submit" name="login" class="btn loginbtn btn-block" style="background-color: #6D7AD2; color: #fff; padding: 5px 30px; font-size:18px">Login</button>
                            <button type="button" name="register" class="btn btn-block loginbtn" style="background-color: #fff; color: #6D7AD2; padding: 5px 30px; font-size:18px; border-color:#6D7AD2; " onclick="window.location='register.php'">Register</button>


                            <div class="alert alert-danger" id="failure" style="margin-top: 10px; display: none">
                                <strong>Does Not Match!</strong> Invalid Username Or Password
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <?php
    include "footer.php";
    ?>


    <?php
    if (isset($_POST["login"])) {


        $count = 0;
        $res = mysqli_query($link, "select * from registration where username='$_POST[username]' && password='$_POST[password]'");

        $count = mysqli_num_rows($res);

        if ($count == 0) {

    ?>
            <script type="text/javascript">
                document.getElementById("failure").style.display = "block";
            </script>
        <?php

        } else {

            $_SESSION["username"] = $_POST["username"];

        ?>
            <script type="text/javascript">
                window.location = "select_exam.php";
            </script>
    <?php
        }
    }

    ?>


    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/jquery-price-slider.js"></script>
    <script src="js/jquery.meanmenu.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>


</body>

</html>
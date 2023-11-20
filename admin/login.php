<?php include('../config/constant.php'); ?>

<html>
    <head>
        <title>Login - Food order system</title>
        <link rel="stylesheet" href="../css/admin.css">
    </head>
    <body>
        <div class="login text-center">
            <h1 class="text-center">Login</h1>

            <?php
                if(isset($_SESSION['login']))
                {
                    echo $_SESSION['login'];//Display the messege
                    unset($_SESSION['login']);//Removing messege after refresh the page
                }

                if(isset($_SESSION['no-login-message']))
                {
                    echo $_SESSION['no-login-message'];
                    unset($_SESSION['no-login-message']);
                }
            ?>

            <!--Login form Start Here-->
                <form action="" method="POST" class="text-center" >
                <br><br>
                Username: <br>
                <input type="text" name="username" placeholder="Enter username"><br><br>
                Password: <br>
                <input type="password" name="password" placeholder="Enter password"><br><br>
                <input type="submit" name="submit" value="Login" class="btn-primary">
                </form>
            <!--Login form end here-->
        </div>
    </body>
</html>

<?php
//Check whether the submit button click or not
if(isset($_POST['submit']))
{
    //Process the login form

    //Get the data from form
    $username = $_POST['username'];
    $password = md5($_POST['password']);

    //Create a Query to username and password match or not user
    $sql = "SELECT * FROM tbl_admin WHERE username='$username' AND  password='$password' ";

    //Execute the Query
    $res = mysqli_query($conn,$sql);

    //Count rows to check whether user or not
    $count = mysqli_num_rows($res);

    if($count==1)
    {
        //User is Available and login successfull.
        $_SESSION['login'] = "<div class='success'>Login Successfully.</div>";
        $_SESSION['user'] = $username; //To check whether the user is logged in or not and logout will unset it
        //Redirect the Home page/dashboard
        header('location:'.SITEURL.'admin/index.php');
    }
    else
    {
        //User not availa ble and login failed.
        $_SESSION['login'] = "<div class='error'>Username And Password is not match.</div>";
        //Redirect the home page/dashboard
        header('location:'.SITEURL.'admin/login.php');
    }
    
}
?>
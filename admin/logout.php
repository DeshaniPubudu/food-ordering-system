<?php include('../config/constant.php'); ?>

<?php
//Destory the session 
session_destroy();

//Redirect to the login page
header('location:'.SITEURL.'admin/login.php');
?>

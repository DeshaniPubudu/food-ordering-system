<?php

//include the constant.php file
include('../config/constant.php');

//1. Get ID to be deleted admin
$id = $_GET['id'];

//2. Create the query to delete admin
$sql = "DELETE FROM tbl_admin WHERE id=$id";

//Execute the query
$res = mysqli_query($conn,$sql);

//Check whether successfully deleted or not
if($res==TRUE)
{
    //Successfully deleted admin
    //echo "Delete Admin";
    //Create session to delete admin
    $_SESSION['delete'] = "<div class='success'>Admin Deleted Successfully</div>";
    header("location:".SITEURL.'admin/manage-admin.php');
}
else
{
    //Failed delete admin
    //echo "Not Delete Admin";
    $_SESSION['delete'] = "<div class='error'>Failed to Delete Admin.Try Again Later</div>";
    header("location:".SITEURL.'admin/manage-admin.php');
}

//3. Redirect to the manage admin page(success or Error)

?>
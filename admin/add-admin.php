<?php
    include('partials/menu.php');
?>

<div class="main-content">
    <div class="wrapper">
        <h1>Add Admin</h1>
        <br><br>

        <form action="" method="POST">
            <table class="tbl-30">
                <tr>
                    <td>Full Name:</td>
                    <td><input type="text" name="full_name" placeholder="Enter Your Name"></td>
                </tr>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" placeholder="Your Username"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" placeholder="Enter Your Password"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="submit" value="Add Admin" class="btn-secondary">
                    </td>
                </tr>
            </table>
        </form>

    </div>
</div>



<?php
    include('partials/footer.php');
?>

<?php
    //Add Admin Button Clicked or Not Clicked
    if(isset($_POST['submit']))
    {
        //Button clicked
        //echo "Button Clicked";

        //Get data from the form
        $fullname = $_POST['full_name'];
        $username = $_POST['username'];
        $password = md5($_POST['password']); //password encrypted
        
        //SQL query to save data into the database
        $sql = "INSERT INTO tbl_admin SET
        full_name = '$fullname',
        username = '$username',
        password = '$password' ";

        //Execute the query
        $res = mysqli_query($conn, $sql) or die(mysqli_error($conn));

        //Check the data is inserted or not
        if($res==TRUE)
        {
            //echo "Data Inserted";
            //create a session variable to display message
            $_SESSION['add'] = "Admin added successfully";
            //Redirect to page manage admin
            header("location:".SITEURL.'admin/manage-admin.php');
        }else
        {
            //create a session variable to display message
            $_SESSION['add'] = "Failed to add admin";
            //Redirect to page manage admin
            header("location:".SITEURL.'admin/add-admin.php');
        }
    }
 
?>
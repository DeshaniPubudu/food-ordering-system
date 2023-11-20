<?php
    include('partials/menu.php');
?>
        <!--Main content section starts-->
        <div class="main-content">
            <div class="wrapper">
                <h1>Dashboard</h1>
                <br><br>

                <?php
                    if(isset($_SESSION['login']))
                    {
                        echo $_SESSION['login']; //Display the message
                        unset($_SESSION['login']); //Removing mesage after refresh
                    }
                ?>

                <div class="col-4 text-center">
                    <?php
                        //Create sql
                        $sql = "SELECT * FROM tbl_category";
                        //Execute query
                        $res = mysqli_query($conn,$sql);
                        //Count number of the rows
                        $count = mysqli_num_rows($res);
                    ?>
                    <h1><?php echo $count; ?></h1>
                    category
                </div>

                <div class="col-4 text-center">
                    <?php
                    //create sql
                    $sql1 = "SELECT * FROM tbl_food";
                    //Execute the quey
                    $res1 = mysqli_query($conn,$sql1);
                    //Count number of the row
                    $count1 = mysqli_num_rows($res1);
                    ?>
                    <h1><?php echo $count1; ?></h1>
                    Food
                </div>

                <div class="col-4 text-center">
                    <?php
                    //create sql
                    $sql2 = "SELECT * FROM tbl_order";
                    //Execute the query
                    $res2 = mysqli_query($conn,$sql2);
                    //Count number of the rows
                    $count2 = mysqli_num_rows($res2);
                    ?>
                    <h1><?php echo $count2; ?></h1>
                    Total Orders
                </div>

                <div class="col-4 text-center">
                    <?php
                    //create sql query to revenue granted
                    $sql3 = "SELECT SUM(total) AS Total FROM tbl_order WHERE status='Delivered' ";
                    //Execute the query
                    $res3 = mysqli_query($conn,$sql3);
                    //Get the value
                    $row = mysqli_fetch_assoc($res3);
                    //Get the total revenue
                    $total_revenue = $row['Total'];
                    ?>
                    <h1><?php echo "Rs." .$total_revenue; ?></h1>
                    Revenue Generated
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!--Main content section ends-->

<?php
    include('partials/footer.php');
?>
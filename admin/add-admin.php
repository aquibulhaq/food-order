<?php include('partials/menu.php'); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Add Admin</h1>

        <br><br>

        <?php 
            if(isset($_SESSION['add'])) //Checking whether the session is set
            {
                echo $_SESSION['add']; //Display the session message if set
                unset($_SESSION['add']); //Remove session message
            }
        ?>

        <form action="" method="POST">

            <table class="tbl-30">
                <tr>
                    <td>Full Name: </td>
                    <td>
                        <input type="text" name="full_name" placeholder="Enter Your Name">
                    </td>
                </tr>

                <tr>
                    <td>Username: </td>
                    <td>
                        <input type="text" name="username" placeholder="Your Username">
                    </td>
                </tr>

                <tr>
                    <td>Password: </td>
                    <td>
                        <input type="password" name="password" placeholder="Your Password">
                    </td>
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

<?php include('partials/footer.php'); ?>


<?php 
    //Process the value from form and save it in database

    //Check whether the submit button is clicked

    if(isset($_POST['submit'])){
        //1. Get the Data from form
        $full_name = $_POST['full_name'];
        $username = $_POST['username'];
        $password = md5($_POST['password']); //Password encryption with MD5

        //2. SQL query to save the data into database
        $sql = "INSERT INTO admin_panel SET 
            full_name='$full_name',
            username='$username',
            password='$password' ";
 
        //3. Executing query and saving data into datbase
        $res = mysqli_query($conn, $sql) or die(mysqli_error());

        //4. Check whether the data is inserted or not and display appropriate message
        if($res==True){
            //Create a Session Variable to Display Message
            $_SESSION['add'] = "<div class='success'>Admin Added Successfully.</div>";
            //Redirect page to Manage Admin
            header("location:".SITEURL.'admin/manage-admin.php');
        }
        else{
            //Create a session variable to display message
            $_SESSION['add'] = "<div class='error'>Failed to Add Admin.</div>";
            //Redirect page to Add Admin
            header("location:".SITEURL.'admin/add-admin.php');
        }

    }
    
?>
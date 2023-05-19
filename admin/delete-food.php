<?php
include('../config/constants.php');

if (!isset($_GET['id']) || !isset($_GET['image_name'])) {
    $_SESSION['unauthorize'] = "<div class='error'>Unauthorized Access.</div>";
    header('location:'.SITEURL.'admin/manage-food.php');
}

$id = $_GET['id'];
$image_name = $_GET['image_name'];

if ($image_name != "") {
    $path = "../images/food/".$image_name;

    if (!unlink($path)) {
        $_SESSION['upload'] = "<div class='error'>Failed to Remove Image File.</div>";
        header('location:'.SITEURL.'admin/manage-food.php');
        die();
    }
}

$sql = "DELETE FROM food WHERE id=$id";
$res = mysqli_query($conn, $sql);

if ($res)
    $_SESSION['delete'] = "<div class='success'>Food Deleted Successfully.</div>";
else
    $_SESSION['delete'] = "<div class='error'>Failed to Delete Food.</div>";

header('location:'.SITEURL.'admin/manage-food.php');
?>

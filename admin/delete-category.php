<?php
include('../config/constants.php');

if (!isset($_GET['id']) || !isset($_GET['image_name']))
    header('location:'.SITEURL.'admin/manage-category.php');

$id = $_GET['id'];
$image_name = $_GET['image_name'];

if($image_name != "") {
    $path = "../images/category/".$image_name;

    if (!unlink($path)) {
        $_SESSION['remove'] = "<div class='error'>Failed to Remove Category Image.</div>";
        header('location:'.SITEURL.'admin/manage-category.php');
        die();
    }
}

$sql = "DELETE FROM category WHERE id=$id";
$res = mysqli_query($conn, $sql);

if ($res)
    $_SESSION['delete'] = "<div class='success'>Category Deleted Successfully.</div>";
else
    $_SESSION['delete'] = "<div class='error'>Failed to Delete Category.</div>";

header('location:'.SITEURL.'admin/manage-category.php');
?>

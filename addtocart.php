<?php 
include("config.php");

$post_id_by_addbar = $_GET['post_id'];
$sql_show_post_data = "SELECT * from post WHERE post_id = {$post_id_by_addbar}";
$result_sql_show_post_data = mysqli_query($conn, $sql_show_post_data) or die("Query Failed !! --> sql_show_post_data");

$pro_img="";
$pro_name="";
$pro_qty = 1;
$pro_price = 989;
if (mysqli_num_rows($result_sql_show_post_data) > 0) {
    while ($row = mysqli_fetch_assoc($result_sql_show_post_data)) {
        
        $pro_img= $row['post_img'];
        $pro_name=$row['title'];
    }
}


    $category_name = $pro_name;
    $sql_category_cheack = "SELECT product_name FROM cart WHERE product_name = '{$category_name}'";
    $result_sql_category_cheack = mysqli_query($conn, $sql_category_cheack) or die("Query Failed!! --> sql_category_cheack");
    if (mysqli_num_rows($result_sql_category_cheack) > 0) {
        echo ("<p style='color:red; font-size:25px; margin:10px 0px;'>Category Already Exits...</p>");
    } else {

        $sql_insert_category = "INSERT INTO cart (product_img, product_name, qty, price) VALUES ('{$pro_img}','{$pro_name}','{$pro_qty}','{$pro_price}')";

        if (mysqli_query($conn, $sql_insert_category)) {
            header("Location:{$hostname}");
        }
    }

?>

<?php include "header.php"; ?>
<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <h1 class="admin-heading">All Item</h1>
            </div>
            <div class="col-md-2">
                <a class="add-new" href="index.php">Add more items</a>
            </div>
            <div class="col-md-12">
                <table class="content-table">
                    <thead>
                        <th>S.No.</th>
                        <th>Produce Image</th>
                        <th>Produce Name</th>
                        <th>QTY.</th>
                        <th>Price</th>
                        <th>Delete</th>
                    </thead>
                    <tbody>
                        <!-- PHP CODE -->
                        <?php
                        include ("config.php");
                        if (isset($_GET['page_num_index'])) {
                            $page_num_index_by_addbar = $_GET['page_num_index'];
                        } else {
                            $page_num_index_by_addbar = 1;
                        }
                        $record_limit = 5;
                        $offset = ($page_num_index_by_addbar - 1) * $record_limit;
                        $sql_show_user = "SELECT * FROM cart ORDER BY cart_id LIMIT {$offset},{$record_limit}";
                        $result_sql_show_user = mysqli_query($conn, $sql_show_user) or die("Query Failed!!");
                        if (mysqli_num_rows($result_sql_show_user) > 0) {
                            $serial_num = $offset + 1;
                            while ($row = mysqli_fetch_assoc($result_sql_show_user)) {
                                ?>
                                <tr>
                                    <td class='id'>
                                        <?php echo ($serial_num); ?>
                                    </td>
                                    <td>
                                        <img src="admin/upload/<?php echo ($row['product_img']) ?>" alt="" srcset=""
                                            style="height:95px;">
                                    </td>
                                    <td>
                                        <?php echo ($row['product_name']) ?>
                                    </td>
                                    <td>
                                        <?php echo ($row['qty']) ?>
                                    </td>
                                    <td>
                                        <?php echo ($row['price']) ?>
                                    </td>
                                    <td class='delete'><a href='delete_cart_item.php?id=<?php echo ($row["cart_id"]) ?>'><i
                                                class='fa fa-trash-o'></i></a></td>
                                </tr>
                                <?php $serial_num++;
                            }
                        } ?>
                        <!-- PHP CODE -->
                    </tbody>
                </table>
                <!-- Pagination PHHP CODE -->
                <?php
                $sql_user_show_by_page = "SELECT * FROM cart";
                $result_sql_user_show_by_page = mysqli_query($conn, $sql_user_show_by_page) or die("Query Die --> sql_user_show_by_page");
                if (mysqli_num_rows($result_sql_user_show_by_page) > 0) {
                    $Amount = 0;
                    $items = [];
                    $sr = 1;
                    while ($row = mysqli_fetch_assoc($result_sql_user_show_by_page)) {
                        $Amount += $row['price'];
                        $items[] = $sr . ". Product Name: " . $row['product_name'] . " | Qty: " . $row['qty'] . " | Price: " . $row['price'] . "\n\n";
                        $sr++;
                    }
                    $items_string = implode("\n", $items);
                    $whatsapp_message = urlencode("I'd like to shop these items:\n" . $items_string);
                    echo ("<ul class='pagination admin-pagination'>");
                    echo ("<li style='background-color:#7600bc; padding:5px 10px; color:white; font-size:18px; font-weight:700;'><a href='https://api.whatsapp.com/send?phone=+918819934679&text={$whatsapp_message}'>Amount to Pay : {$Amount}</a></li>");
                    // echo ("<a href='https://api.whatsapp.com/send?phone=+918817762774&text={$whatsapp_message}'>");
                    // echo ("<img src='images/whatsapppng.png' alt='Whats App' class='whatappIcon w-100'>");
                    // echo ("</a>");
                    echo ("</ul>");
                }
                ?>
            </div>
        </div>
    </div>
</div>
<?php include "footer.php"; ?>
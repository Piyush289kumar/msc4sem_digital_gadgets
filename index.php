<?php include 'header.php'; ?>
<div id="main-content">
    <div class="container">
        <div class="row">
        </div>
            <?php include 'sidebar.php'; ?>
        </div>

        <div class="col-md-8">
                <!-- post-container -->
                <div class="post-container">
                <div class="row">

                    <?php
                    include("config.php");

                    if (isset($_GET['page_index'])) {
                        $page_index_by_addbar = $_GET['page_index'];
                    } else {
                        $page_index_by_addbar = 1;
                    }
                    $record_limi = 6;
                    $offset = ($page_index_by_addbar - 1) * $record_limi;



                    $sql_show_post_record = "SELECT *  FROM post
                        LEFT JOIN category ON post.category = category.category_id
                        LEFT JOIN user ON post.author = user.user_id
                        ORDER BY post.post_id DESC LIMIT {$offset},{$record_limi}" or die("Query Failed!! --> sql_show_post_record");
                    $result_sql_show_post_record = mysqli_query($conn, $sql_show_post_record);
                    if (mysqli_num_rows($result_sql_show_post_record) > 0) {
                        while ($row = mysqli_fetch_assoc($result_sql_show_post_record)) {
                            ?>
                            <!-- CARD -->
                           

                                <div class="col-md-6">
                                    <div class="card" style="width: 100%; border:2px solid black; border-radius:24px; margin-top:10px;">
                                    <a class="post-img"
                                                            href="single.php?post_id=<?php echo ($row['post_id']) ?>"><img style="height:150px; border-radius:44px;"
                                                                src="admin/upload/<?php echo $row['post_img']; ?>"
                                                                alt="Picture unlink" /></a>
                                    <div class="card-body" style="margin:25px;">
                                    <h5 class="card-title"><a href='single.php?post_id=<?php echo ($row['post_id']) ?>'><?php echo substr($row['title'], 0, 25) . '....'; ?></a></h5>
                                        <p class="card-text"><?php echo substr($row['description'], 0, 85) . '....'; ?></p>
                                        <a href='addtocart.php?post_id=<?php echo ($row['post_id']) ?>' class="btn btn-primary">Add to Cart</a>
                                        <a href='#' class="btn btn-primary">9,999 Rs/-</a>
                                    </div>
                                    </div>
                                </div>

                            <?php
                        }
                    }
                    

                    $sql_total_post_record = "SELECT * from post" or die("Query Failed !! --> sql_total_post_record");
                    $result_sql_total_post_record = mysqli_query($conn, $sql_total_post_record);
                    if (mysqli_num_rows($result_sql_total_post_record) > 0) {
                        $total_post_record = mysqli_num_rows($result_sql_total_post_record);
                        $total_page = ceil($total_post_record / $record_limi);
                        echo ("<ul class='pagination admin-pagination'>");

                        if ($page_index_by_addbar > 1) {
                            echo ("<li><a href='$hostname/?page_index=" . ($page_index_by_addbar - 1) . "'>Prev</a></li>");
                        }

                        for ($i = 1; $i <= $total_page; $i++) {

                            if ($page_index_by_addbar == $i) {
                                $active_page = "active";
                            } else {
                                $active_page = "";
                            }

                            echo ("<li class=$active_page><a href='$hostname/?page_index=$i'>$i</a></li>");
                        }
                        if ($page_index_by_addbar < $total_page) {
                            echo ("<li><a href='$hostname/?page_index=" . ($page_index_by_addbar + 1) . "'>Next</a></li>");
                        }
                        echo ("</ul>");
                    }
                    ?>
                </div><!-- /post-container -->
        
    </div>
    </div>
</div>
<?php include 'footer.php'; ?>
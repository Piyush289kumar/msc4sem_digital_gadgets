<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Done!!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <link rel="stylesheet" href="RegisterFromstyle.css">
    <style>
        #Gif{
            height:250px;
        }
    </style>
</head>

<body>
<?php include("config.php"); ?>
    <div class="container d-flex justify-content-center">
        <div class="d-flex flex-column justify-content-between">
            <div class="card mt-3 p-3">
                <div>
                    <p class="mb-1">Your order has been received</p>
                    <h4 class="mb-2 text-white">Your order ID is : 95784616</h4>
                </div>
                        <button class="btn btn-primary btn-md"><small></small><span>E-shopy.com</span></button>
                     

            </div>
            <!-- Save Data Start Block -->
            <?php 
                if (isset($_POST['save'])) {
                    header("Location:{$hostname}");
                }
            ?>
            <!-- Save Data End Block -->
            <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
                <div class="card two bg-white px-5 py-4 mb-3">
                    <div class="form-group" ><img src="Images/verified.gif" alt="Successfully Register" id="Gif">
                </div>
                    
                    <button type="submit" name="save" class="btn btn-primary btn-block btn-lg mt-1 mb-2"><span>CONTINUE SHOPPING</span></button>
                </div>
            </form>
        </div>
    </div>

    
</body>

</html>
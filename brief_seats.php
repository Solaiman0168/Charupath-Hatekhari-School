<?php $page_title = "Total Seat  | Charupath Haatekhori School";?>
<?php include 'header.php';?>
<?php include 'menu.php';?>

<div class="banner1">
            
        <div class="w3_agileits_service_banner_info">
            <h2>আসন সংখ্যা</h2>
        </div> 
    </div>
<!-- //banner -->

<?php
    $sql = "SELECT * FROM `brief_seats` WHERE is_deleted = 0";
    $result = mysqli_query($con,$sql);
    $i=1;
?>
        <div class="container">
            <div class="container col-xs-12 col-sm-12 col-md-10  col-lg-10 col-md-offset-1"  style="margin-top:35px">
        <div class="row">
            <div class="table-responsive">

                <table class="table table-striped table-bordered table-hover">
                    <thead >
                        <tr class="success">
                            <th><center>নং</center></th>
                            <th><center>শ্রেণি</center></th>
                            <th><center>সংখ্যা</center></th>
                            
                        </tr>
                    </thead>
                    <tbody>
                       <?php while($row = mysqli_fetch_array($result)):
                             
                       ?>
                        <tr>
                            <th scope="row"><center><?=$i++?></center></th> 
                            <td><?=$row['bn_class']?></td>
                            <td><?=$row['bn_seat_no']?></td>
                          
                        </tr>
                      <?php endwhile;  ?> 

                    </tbody>
                </table>    
                

            </div>
        </div>

    </div>

               </div>
                 

 

<?php include 'footer.php';?>
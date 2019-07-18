<?php $page_title = "Gallery wise Photo | EHAHS";?>
<?php include 'header.php';?>
<?php include 'menu.php';?>


<!-- //banner -->
<?php

     if(isset($_GET['view'])){
        $id = $_GET['view'];
        $sql = "SELECT * FROM `gallery_wise_photo` WHERE photo_gallery_id = $id";
     $result = mysqli_query($con,$sql);

?>  

<div class="contact">
  <div class="container">
    <h3 class="w3l_header w3_agileits_header">আমাদের <span>ছবি </span></h3>
            <div class="inner_w3l_agile_grids-gal">
                 <?php while($row = mysqli_fetch_array($result)):?>
                <div class="col-md-4 gallery-grid gallery1">
                    <a href="admin_school/soft/upload/<?=$row['image_url']?>" class="swipebox"><img  src="admin_school/soft/upload/<?=$row['image_url']?>"  class="img-responsive" alt="">
                        <div class="textbox">
                        <h4><?=$row['bn_image_title']?></h4>
                        <p><i class="fa fa-graduation-cap" aria-hidden="true"></i></p>
                            
                        </div>
                </a>
                </div>
                  <?php endwhile;?>
                
                    
            
                <div class="clearfix"> </div>
            </div>
        </div>  
    </div>  
    <!--//gallery-->
    <?php } ?>

<?php include 'footer.php' ?>

</body>
</html>
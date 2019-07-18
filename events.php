<?php $page_title = "Events Details | Charupath Haatekhori School";?>
<?php include 'header.php';?>
<?php include 'menu.php';?>

<?php
        if(isset($_GET['view'])){
        $id = $_GET['view'];
        $sql = "SELECT * FROM `home_events_details` WHERE home_event_details_id = $id";
        $row = mysqli_fetch_array(mysqli_query($con,$sql));

 ?>
<div class="container">
    <div class="row">
       
        <div class="col-md-8 col-md-offset-2">
            <div class="events_head">
                <h4><?=$row['bn_title']?></h4>
            </div>
        </div>
        <div class="col-md-12">
            <div class="events_details">
                <p><?=$row['bn_details']?></p>
            </div>
        </div>
    </div>
</div>
  <?php } ?>               
<?php include 'footer.php';?>
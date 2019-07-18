<?php $page_title = "Contact Us | Charupath Haatekhori School";?>
<?php include 'header.php';?>
<?php include 'menu.php';?>

<div class="banner1">
			
		<div class="w3_agileits_service_banner_info">
			<h2>যোগাযোগ</h2>
		</div> 
	</div>
<!-- //banner -->
	<?php
        $sql = "SELECT * FROM address WHERE `address_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
		<div class="container">
			<div class="col-md-4 col-sm-12 contact">
				<h2><i class="fa fa-address-book" aria-hidden="true"></i> যোগাযোগ করুন</h2>
				<ul class="">
					<li><?=$result['location']?></li>
						<li><?=$result['location2']?></li>
					
					<li>মোবাইল: <?=$result['contact']?></li>
					<li>মোবাইল: <?=$result['contact2']?></li>
					<li>ই-মেইল: <?=$result['email']?></li>
			
				</ul>
			</div>

	<?php
        $sql = "SELECT * FROM map WHERE `map_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
			<div class="col-md-8 col-sm-12 location_map">
                              <center><h2><i class="fa fa-map-marker" aria-hidden="true"></i> লোকেশন ম্যাপ</h2> </center>
				<div class="loc_map"><iframe src="<?=$result['map_url']?>" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
				
			</div>
               </div>
                 


<?php include 'footer.php';?>
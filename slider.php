<?php
	$sql = "SELECT * FROM `slider` WHERE slider.is_deleted = 0";
		$result = mysqli_query($con,$sql);

?>
<div class="banner-silder col-xm-12 col-sm-12 col-md-8" style="height:500px; margin-bottom: 10px;" >
		<div id="JiSlider" class="jislider" style="overflow: hidden; position: relative;">
			<ul>
				<?php while($row = mysqli_fetch_array($result)):?>
				<li>
					
					<div class="w3layouts-banner-top">
							<img src="admin_school/soft/upload/<?=$row['image_url']?>">
							<div class="container">
								<div class="agileits-banner-info">
								 
									
								</div>	
							</div>
					</div>

				</li>
				<?php endwhile;?>
			</ul>
		</div>
      </div>
   <?php
        $sql = "SELECT * FROM youtube_link WHERE `youtube_link_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
<div class="col-md-4" style="height: 500px;margin-bottom: 10px;" >
	<div class="row" style="height: 250px; margin-left: -15px;">
		<iframe width="100%" height="240" src="<?=$result['link1']?>" frameborder="0" allowfullscreen></iframe>
	</div>
	<div class="row" style="height: 250px; margin-left: -15px;">
		<iframe width="100%" height="240" src="<?=$result['link2']?>" frameborder="0" allowfullscreen></iframe>
	</div>
</div>
<style type="text/css">
	@media (min-width: 1024px){
		.row{
			margin-left: 0px;
			margin-right: 0px;
		}
	}else{
		.row{
			margin-left: -15px;
			margin-right: -15px;
		}
	}
</style>
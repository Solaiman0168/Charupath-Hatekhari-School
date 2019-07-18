<?php $page_title = "Photo Gallery | EHAHS";?>
<?php include 'header.php';?>
<?php include 'menu.php';?>


<?php
    $sql = "SELECT * FROM `photo_gallery` WHERE `photo_gallery`.`is_deleted`=0";
    $result = mysqli_query($con,$sql);

?>

	

<div class="bodyback">
<div class="container" style="padding-bottom: 30px;" >
<h3 class="w3l_header w3_agileits_header">আমাদের <span>ছবির অ্যালবাম</span></h3>
	<div class="col-md-12 col-sm-12 col-xs-12">
		 <?php while($row = mysqli_fetch_array($result)):?>
		<div class="album">
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="album_list">
					<a href="<?='etc_gallery.php'.'?view='.$row['photo_gallery_id']?>" target="_blank">
						<div class="a1"  >
							<img src="admin_school/soft/upload/<?=$row['icon_url']?>" height="200" width="300" class="img-responsive album_css">
							<h4><?=$row['bn_title']?></h4>
						</div>
					</a>
				</div>
			</div>
			
			
			
			

		</div>
		<?php endwhile;?>
	</div>		
</div>	

</div>
<div class="clearfix"> </div>
<?php include 'footer.php' ?>

</body>
</html>



<div class="bodyback">
<section class="monuments">
    
</section>
</div>
<div class="notice_events">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="notice">

					<?php
						$sql = "SELECT * FROM `home_notices` WHERE 1";
               			$result = mysqli_query($con,$sql);

					?>
					
						<h4 style="background: #315050; text-align: center; padding: 3px;    color: #fff;">Notice Board</h4>
					
					<div class="notice_body">
						<marquee behavior="scroll" direction="up" scrollamount="2" onmouseover="this.stop();" onmouseout="this.start();">
						<ul>

							<?php while($row = mysqli_fetch_array($result)):?>
       
								<li>
									<a target="_blank" href="<?='notice_details.php'.'?view='.$row['home_notice_id']?>">&gt; <?=$row['bn_title']?></a>
								</li>
							<?php endwhile;?>
														
							</ul></marquee>
					</div>

					
				</div>
			</div>
			<div class="col-md-4">
				<div class="events">
					<?php
						$sql = "SELECT * FROM `home_events_details` WHERE 1";
               			$result = mysqli_query($con,$sql);

					?>
					
					
						<h4 style="background: #315050; text-align: center; padding: 3px;    color: #fff;">Events</h4>
					
					<div class="notice_body">
						<marquee behavior="scroll" direction="up" scrollamount="2" onmouseover="this.stop();" onmouseout="this.start();">
						<ul>
							<?php while($row = mysqli_fetch_array($result)):?>
								<li>
									<a target="blank" href="<?='events.php'.'?view='.$row['home_event_details_id']?>">&gt; <?=$row['bn_title']?></a>
								</li>
								<?php endwhile;?>					
							</ul></marquee>
					</div>
					
					</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="imp_links">
					<?php
						$sql = "SELECT * FROM `home_important_links` WHERE 1";
               			$result = mysqli_query($con,$sql);

					?>
				
						<h4 style="background:#315050; text-align: center; padding: 3px;    color: #fff;">Important Links</h4>
			
					<div class="notice_body">
						
							<marquee behavior="scroll" direction="up" scrollamount="2" onmouseover="this.stop();" onmouseout="this.start();">
						<ul>

							<?php while($row = mysqli_fetch_array($result)):?>
								<li>
									<a target="blank" href="<?=$row['bn_event_link']?>">&gt; <?=$row['bn_event_title']?></a>
								</li>
							<?php endwhile;?>					
							</ul></marquee>	
					</div>
				
					</a>
				</div>
			</div>
			
		</div>
	</div>
</div>


<!-- footer -->
	<div class="footer">
	<div class="f-bg-w3l">
		<div class="container">
	<?php
       $sql = "SELECT * FROM footer_social_icon_link WHERE footer_social_icon_link_id = 1";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
			<div class="col-md-4 w3layouts_footer_grid">
				<h2>যোগাযোগ<span> মাধ্যম</span></h2>
				<ul class="social_agileinfo">
					<li><a href="<?=$result['fb_icon_link']?>" target="_blank" class="w3_facebook"><i class="fa fa-facebook"></i></a></li>
					<li><a href="<?=$result['twitter_icon_link']?>" class="w3_twitter" target="_blank"><i class="fa fa-twitter"></i></a></li>
					
					<li><a href="<?=$result['google_icon_link']?>" class="w3_google" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                     <li><a href="<?=$result['youtube_icon_link']?>" class="w3_youtube" target="_blank"><i class="fa fa-youtube"></i></a></li>
				</ul>
			</div>
     <?php
        $sql = "SELECT * FROM address WHERE `address_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
			<div class="col-md-8 w3layouts_footer_grid">
				
				<ul class="w3l_footer_nav">
					<li><?=$result['location']?></li>
						<li><?=$result['location2']?></li>
					
					<li>মোবাইল: <?=$result['contact']?></li>
					<li>মোবাইল: <?=$result['contact2']?></li>
					<li>ই-মেইল: <?=$result['email']?></li>
			
				</ul>
                             
				
			</div>
                    <div class="container">
                     <div class=" col-md-8 col-lg-8 col-md-offset-4 footernav"> <ul class="w3l_footer_navi">
					<center><li><a href="index.php" class="active">Home</a></li>
					
					
					<li><a href="gallery.php" target="_blank">Album</a></li>
					<li><a href="contact_us.php" target="_blank">Contact Us</a></li>
					<li><a href="admission.php" target="_blank">Online Registration</a></li></center>
				</ul></div></div>

				
		</div>
                       

                         <div class="container">
                                     <div class="copy"><p class="foot_p">© <?php echo Date('Y'); ?>  Charupath Haatekhori School. All Rights Reserved <a href="" target="_blank" style="color:#ff6c2c; ">Webmail</a> &nbsp;
				
				 Developed By:<a href="wwww.bdsoft.biz" style="color:#fff; ">BDSoft IT Solutions</a></p></div>
                        </div>
			<div class="clearfix"> </div>
	</div>
</div>
<!-- //footer -->
<!-- start-smoth-scrolling -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smooth-scrolling -->
<link rel="stylesheet" href="css/swipebox.css">
				<script src="js/jquery.swipebox.min.js"></script> 
					<script type="text/javascript">
						jQuery(function($) {
							$(".swipebox").swipebox();
						});
					</script>


<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

<!-- //stats -->
<!-- //footer -->
<!-- flexSlider -->
<!--	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
  </script>-->
<!-- //flexSlider -->


<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
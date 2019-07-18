<?php $page_title = "Home  | Charupath";?>
<?php include 'header.php' ?>
	
<body>

<?php include 'menu.php' ?>

<!-- banner -->
	
<?php include 'slider.php' ?>



<!-- testimonials -->		
	    <?php
		$sql = "SELECT * FROM founder_speech WHERE `founder_speech_id` = 1";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
        //print_r($result);
        //echo $result['bn_short_speech'];
    ?>	
	<div class="testimonials">
		<div class="col-md-6 w3layouts_event_right">
			<h3><?=$result['bn_title']?></h3>
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">

						<li style="display: list-item;">
							<div class="w3_event_right_grid">
								<div class="w3layouts_event_right_para">
									<?=$result['bn_short_speech']?>.....<a href="brief_presidents_statement.php" target="_blank">বিস্তারিত</a>
									<div class="w3layouts_event_right_para_pos">
										<i class="fa fa-quote-left" aria-hidden="true"></i>
									</div>
								</div>
								<div class="w3_agile_event_right_grids">
									<div class="col-xs-4 w3_agile_event_right_grid_left">
										<img class="custom_img2" src="admin_school/soft/upload/<?=$result['image_url']?>" alt=" " class="img-responsive" />
									</div>
									<div class="col-xs-8 w3_agile_event_right_grid_right">
										<h4><?=$result['bn_founder_name']?></h4>
										<p><?=$result['bn_founder_designation']?> <br>চারুপাঠ হাতেখড়ি স্কুল।</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
					</ul>
				</div>
			</section>
		</div>

     <?php
     $sql = "SELECT * FROM principal_speech WHERE `principal_speech_id` = 1";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>

		<div class="col-md-6 w3layouts_event_right">
			<h3><?=$result['bn_title']?></h3>
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li style="display: list-item;">
							<div class="w3_event_right_grid">
								<div class="w3layouts_event_right_para">
									<p><?=$result['bn_short_speech']?>.....<a href="brief_head_speach.php" target="_blank">বিস্তারিত</a> </p>
									<div class="w3layouts_event_right_para_pos">
										<i class="fa fa-quote-left" aria-hidden="true"></i>
									</div>
								</div>
								<div class="w3_agile_event_right_grids">
									<div class="col-xs-4 w3_agile_event_right_grid_left">
										<img class="custom_img2" src="admin_school/soft/upload/<?=$result['image_url']?>" alt=" " class="img-responsive" />
									</div>
									<div class="col-xs-8 w3_agile_event_right_grid_right">
										<h4><?=$result['bn_principal_name']?></h4>
										<p><?=$result['bn_principal_designation']?> <br>চারুপাঠ হাতেখড়ি স্কুল।</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
					</ul>
				</div>
			</section>
		</div>
		<div class="clearfix"> </div>
	</div>

<!-- //testimonials -->





<?php
    $sql = "SELECT * FROM home_heading1 WHERE `home_heading1_id` = 1 ";
    $result = mysqli_fetch_array(mysqli_query($con,$sql));
?>
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<h3><span class="fixed_w3"></span> <span class="fixed_w3"><?=$result['bn_title']?></span></h3> 
			<div class="agileits_banner_bottom_grids">
				
				<div class="clearfix"> </div>
			</div>


		</div>
	</div>
</div>
<!-- //banner-bottom -->

	<!-- services -->
	<div class="services" id="services"> 
		<div class="container">
		<h3 class="w3l_header w3_agileits_header two">আমাদের <span>সম্পর্কে</span></h3>
			<div class="agile_inner_w3ls-grids two">
			<div class="row">
<?php
    $sql = "SELECT * FROM home_about_us1 WHERE `home_about_us1_id` = 1 ";
    $result = mysqli_fetch_array(mysqli_query($con,$sql));
?>
			    <div class="col-md-3 service-box">
					<figure class="icon">
					    <span>১</span>
						<i class="fa fa-graduation-cap" aria-hidden="true"></i>
					</figure>
					<h5><?=$result['bn_title']?></h5>
					<p><?=$result['bn_short_details']?>....<a href="brief_intro_school.php" target="_blank">বিস্তারিত</a></p>
				</div>
				<div class="col-md-3 service-box">
     <?php
        $sql = "SELECT * FROM home_about_us2 WHERE `home_about_us2_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
					<figure class="icon">
					 <span>২</span>
					<i class="fa fa-users" aria-hidden="true"></i>
					</figure>
					<h5><?=$result['bn_title']?> </h5>
					<p><?=$result['bn_short_details']?>.....<a href="brief_educational_activities.php" target="_blank">বিস্তারিত</a></p>
				</div>

				<div class="col-md-3 service-box">
     <?php
        $sql = "SELECT * FROM home_about_us3 WHERE `home_about_us3_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
					<figure class="icon">
					 <span>৩</span>
						<i class="fa fa-building-o" aria-hidden="true"></i>
					</figure>
					<h5><?=$result['bn_title']?> </h5>
				<p><?=$result['bn_short_details']?>......<a href=" brief_success.php" target="_blank">বিস্তারিত</a></p>
				</div>
				<div class="col-md-3 service-box">
     <?php
        $sql = "SELECT * FROM home_about_us4 WHERE `home_about_us4_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
					<figure class="icon">
					 <span>৪</span>
						<i class="fa fa-rocket" aria-hidden="true"></i>
					</figure>
					<h5><?=$result['bn_title']?> </h5>
					<p><?=$result['bn_short_details']?>......<a href="brief_goals_and_activities.php" target="_blank">বিস্তারিত</a> </p>
				</div>
			</div>
			<div class="row">
			    <div class="col-md-3 service-box" style="margin-top:40px">
     <?php
        $sql = "SELECT * FROM home_about_us5 WHERE `home_about_us5_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>				
					<figure class="icon">
					 <span>৫</span>
					<i class="fa fa-users" aria-hidden="true"></i>
					</figure>
					<h5><?=$result['bn_title']?></h5>
					<p><?=$result['bn_short_details']?>.....<a href="brief_teachers_students.php" target="_blank">বিস্তারিত</a></p>
				</div>

                <div class="col-md-3 service-box" style="margin-top:40px">
     <?php
        $sql = "SELECT * FROM home_about_us6 WHERE `home_about_us6_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>	                	
					<figure class="icon">
					    <span>৬</span>
						<i class="fa fa-trophy" aria-hidden="true"></i>
					</figure>
					<h5><?=$result['bn_title']?></h5>
					<p><?=$result['bn_short_details']?>
.....<a href="results.php" target="_blank">পি.ই.সি. রেজাল্ট</a></p> 
				</div>

                <div class="col-md-3 service-box" style="margin-top:40px">
      <?php
        $sql = "SELECT * FROM home_about_us7 WHERE `home_about_us7_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>           
					<figure class="icon">
					    <span>৭</span>
						<i class="fa fa-university" aria-hidden="true"></i>
					</figure>
					<h5><?=$result['bn_title']?></h5>
					<p><?=$result['bn_short_details']?>
.....<a href="brief_facilites.php" target="_blank">বিস্তারিত</a></p> 
				</div>

                <div class="col-md-3 service-box" style="margin-top:40px">
       <?php
        $sql = "SELECT * FROM home_about_us8 WHERE `home_about_us8_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>                 	
					<figure class="icon">
					    <span>৮</span>
						<i class="fa fa-graduation-cap" aria-hidden="true"></i>
					</figure>
					<h5><?=$result['bn_title']?></h5></h5>
					<p><?=$result['bn_short_details']?>
.....<a href="brief_seats.php" target="_blank">আসন সংখ্যা</a></p> 
				</div>
			</div>
				
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //services -->


<?php
        $sql = "SELECT * FROM home_heading2 WHERE `home_heading2_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
<!-- stats -->
<section id="line">
    <div class="container">
        <center><h3> <?=$result['bn_title']?></h3></center>
    </div>
</section>

	<?php
       $sql = "SELECT * FROM counter WHERE `counter_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
	<div class="stats" id="stats">
	    <div class="container"> 
			<div class="inner_w3l_agile_grids">
		<div class="col-md-4 w3layouts_stats_left w3_counter_grid">
		   <i class="fa fa-laptop" aria-hidden="true"></i>
			<p class="counter"><?=$result['counter_1']?></p>
			<h3>শ্রেণি</h3>
		</div>
		<div class="col-md-4 w3layouts_stats_left w3_counter_grid1">
		    <i class="fa fa-smile-o" aria-hidden="true"></i>
			<p class="counter"><?=$result['counter_2']?></p>
			<h3>শিক্ষার্থী</h3>
		</div>
		<div class="col-md-4 w3layouts_stats_left w3_counter_grid3">
		<i class="fa fa-user" aria-hidden="true"></i>
			<p class="counter"><?=$result['counter_3']?></p>
			<h3>শিক্ষক/শিক্ষিকা</h3>
		</div>
		<div class="clearfix"> </div>
	</div>
   </div>	
</div>
<!-- //stats -->
<section id="whyus">
    <div class="container">
        <h3 class="w3l_header w3_agileits_header two cstm_headr">যে কারণে আপনার সন্তানকে <span>চারুপাঠ হাতেখড়ি স্কুলে </span> ভর্তি করবেন</h3>
    <?php
        $sql = "SELECT * FROM why_we_img WHERE `logo_id` = 1";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
        <center>
            <img src="admin_school/soft/upload/<?=$result['image_url']?>" " class="img-responsive why_we" alt="">
        </center>
<?php 
	 $sql = "SELECT * FROM home_why_we  WHERE `home_why_we`.`is_deleted` = 0";
	 $result = mysqli_query($con,$sql);
?>
        <ul>
        	<?php while($row = mysqli_fetch_array($result)):?>
            <li><?=$row['bn_details']?></li>
            <?php endwhile;?>
            
        </ul>
        
    </div>
</section>
	
<section id="admission">
    <div class="container">
       <h3 class="w3l_header w3_agileits_header two cstm_headr">ভর্তি <span>তথ্য</span></h3>
    <?php
        $sql = "SELECT * FROM home_heading3 WHERE `home_heading3_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
       <center><p  class="add_des"><?=$result['bn_title']?></p></center>
        <div class="infor" style="margin-bottom: 35px;">
            <div class="col-md-4">
               <div class="add_info">
    <?php
        $sql = "SELECT * FROM home_admission_rule WHERE `home_admission_rule_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
                   <center><h3>ভর্তি নিয়ামাবলি</h3></center>

                <?=$result['bn_details']?>

               </div>
                 <div class="add_info">

     <?php
        $sql = "SELECT * FROM home_admission_process WHERE `home_admission_process_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>

                   <center><h3>ভর্তি পদ্ধতি</h3></center>
                <?=$result['bn_details']?>
               </div>                

            </div>
            <div class="col-md-4">
               <div class="add_info">
     <?php
        $sql = "SELECT * FROM home_admission_paper WHERE `home_admission_paper_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
                   <center><h3>ভর্তির জন্য প্রয়োজনীয় কাগজপত্রাদি</h3></center>
                <?=$result['bn_details']?>
               </div>
                
            </div>
    <?php
        $sql = "SELECT * FROM home_admission_uniform WHERE `home_admission_uniform_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
            <div class="col-md-4">
               <div class="school__dress"><img src="admin_school/soft/upload/<?=$result['image_url']?>" altt="School Uniform" class="img-responsive" /></div>
               
                
            </div>
        </div>
    </div>
</section>

<?php include 'footer.php' ?>

</body>
</html>
<div class="main_section_agile">
		<div class="w3_agile_banner_top">
			<div class="agile_phone_mail">
				<ul class="agile_forms">
					<li><a class="active" href="admission.php"><i class="fa fa-sign-in" aria-hidden="true"></i>অনলাইন ভর্তি</a> </li>
					<!--<li class="lang_button">
             <a href="">English</a>&nbsp;| &nbsp;<a href="">বাংলা</a>
           <button type="button" style="font-weight: 900;" class="btn btn-primary">English</button>
            <button type="button" style="font-weight: 900;" class="btn btn-info">Bengali</button>
          </li>-->
				</ul>
    <?php
        $sql = "SELECT * FROM address WHERE `address_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
				<ul>
					<li><i class="fa fa-phone" aria-hidden="true">  <?=$result['contact']?></i></li>
					<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@charupath.com.bd"><?=$result['email']?></a></li>
				</ul>
				<div class="clearfix"> </div>
			</div>
		</div>
     <?php
        $sql = "SELECT * FROM logo WHERE `logo_id` = 1";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
		<div class="agileits_w3layouts_banner_nav">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<a href="index.php"><img class="img-responsive custom_img" src="admin_school/soft/upload/<?=$result['image_url']?>" alt="Charupath Logo"></a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<nav class="navbar navbar-default ">
       
        <button type="button" style="z-index: 1000;"class="navbar-toggle " data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
<!--active menu er jnno class="menu__item--current"-->
<div class="collapse navbar-collapse menu--iris navbar-right mainmenu " id="bs-example-navbar-collapse-1" >
      <ul class="nav navbar-nav menu__list  ">
        <!--active menu er jnno class="menu__item--current"-->
        <li class="menu__item "><a href="index.php" class="menu__link">হোম </a></li>
        <!--active menu er jnno class="menu__item--current"-->
              <li class="menu__item"><a href="#" class="menu__link">রেজাল্ট</a>
                <ul>
                    <li><a href="result_bangla_version.php">বাংলা মাধ্যম</a></li>
                    <li><a href="result_english_version.php">ইংরেজী মাধ্যম </a></li>
                </ul>
              </li>
              <!--active menu er jnno class="menu__item--current"-->
              <li class="menu__item"><a href="faculty.php" class="menu__link">শিক্ষক-শিক্ষিকা</a></li>
              <!--active menu er jnno class="menu__item--current"-->
              <li class="menu__item"><a href="#" class="menu__link">রুটিন</a>
                <ul>
                    <li><a href="class_routine_bangla.php">ক্লাস রুটিন (বাংলা মাধ্যম)</a></li>
                    <li><a href="class_routine_english.php">ক্লাস রুটিন (ইংরেজী মাধ্যম)</a></li>
                    <li><a href="exam_routine_bangla.php">পরীক্ষার রুটিন (বাংলা মাধ্যম) </a></li>
                    <li><a href="exam_routine_english.php">পরীক্ষার রুটিন (ইংরেজী মাধ্যম) </a></li>
                </ul>
              </li>
              <li class="menu__item"><a href="#" class="menu__link">সাজেশন</a>
                  <ul>
                    <li><a href="tutorial_suggestion_bangla.php">টিউটোরিয়াল (বাংলা মাধ্যম)</a></li>
                    <li><a href="tutorial_suggestion_english.php">টিউটোরিয়াল (ইংরেজী মাধ্যম)</a></li>
                    <li><a href="semister_suggestion_bangla.php">সেমিস্টার (বাংলা মাধ্যম) </a></li>
                    <li><a href="semister_suggestion_english.php">সেমিস্টার (ইংরেজী মাধ্যম)</a></li>
                </ul>
              </li>
              <li class="menu__item"><a href="#" class="menu__link">নিউজফিড</a>
                <ul>
                    <li><a href="notice.php">নোটিশ</a></li>
                    <li><a href="admission_instruction.php">ভর্তি তথ্য </a></li>
                </ul>
              </li>
              <li class="menu__item"><a href="gallery.php" class="menu__link">গ্যালারী</a></li>
              <li class="menu__item"><a href="contact_us.php" class="menu__link">যোগাযোগ</a></li>
              
       </ul>
      
   
    </nav>


    </div>
  </div>
    
<div class="bodyback">
 <?php
       $sql = "SELECT * FROM `home_notices` WHERE 1";
       $result = mysqli_query($con,$sql);

?>  
<div class="row">
        <div class="header">
          <div class="col-lg-12">
            <div class="fix" style="margin-left: 15px;">
              <div style="font-weight:bold; background:#4a62ab; color:#ddd;" class="col-md-1 col-xs-4 col-sm-1 address2">Notice</div>
              <div class="col-md-11 col-xs-8 yellow" >
                <marquee style="background:#ccc; " behavior="scroll" direction="left" scrollamount="5"  OnMouseOver="this.stop()" OnMouseOut="this.start()"><span class="yellow">               
                  <?php while($row = mysqli_fetch_array($result)):?>

                  <i style="color:green;" class="fa fa-pencil"></i>
                  <a title="<?=strip_tags($row['bn_details'])?>" href="<?='notice_details.php'.'?view='.$row['home_notice_id']?>" style="margin-right:20px"  target="_blank" ><?=$row['bn_title']?></a>
                <?php endwhile;?>
                
                </span></marquee>
              </div>
            </div>
          </div>
        </div>
      </div>




    
 <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
          <nav class="menu--iris">
            <ul class="">
             
            </ul>
          <!--  <div class="w3_agileits_search">
              <form action="#" method="post">
                <input type="search" name="Search" placeholder="Search here..." required="">
                <input type="submit" value=" ">
              </form>
            </div>    -->
          </nav>
        </div>
      </nav>
			</nav>
		</div>
</div>


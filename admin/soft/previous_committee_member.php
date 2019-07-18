<?php include 'include/header.php';?>
<?php $table_heading = "পূর্বের কমিটি সদস্য";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
  
<?php
        $tbl_name="previous_committee_member";       //your table name
        $targetpage = "previous_committee_member.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';
    if(isset($_GET['delete']))
    {
        $ID = $_GET['delete'];
        $sql = "UPDATE $tbl_name SET `is_deleted` = 1 ,`deleted_by` = '$user_no', `deleted_on` = '$CURR_TIME' WHERE previous_committee_member_id = $ID";
        $result = mysqli_query($con,$sql);
        if($result)
        {
            $mgs = "Data Delete Successfully!";
            $class = "green_color alert alert-success col-md-6 alert-dismissable";

        }
        else
        {
            $mgs = "Data Delete Fail!";
           $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
        }
    }
    if(isset($_POST['submit']))
    {
            $bn_name = trim($_POST['bn_name']);
            $en_name = trim($_POST['en_name']);
            $bn_designation =trim( $_POST['bn_designation']);
            $en_designation = trim($_POST['en_designation']);
            $bn_mobile =$_POST['bn_mobile'];
            $en_mobile =$_POST['en_mobile'];
            $email = $_POST['email'];
            $bn_degree = trim($_POST['bn_degree']);
            $en_degree =trim($_POST['en_degree']);
            $bn_dob = trim($_POST['bn_dob']);
            $en_dob = $_POST['en_dob'];
            $bn_job_duration = trim($_POST['bn_job_duration']);
            $en_job_duration = trim($_POST['en_job_duration']);
            $bn_present_address = trim($_POST['bn_present_address']);
            $en_present_address =trim( $_POST['en_present_address']);
            $bn_permanent_address =trim( $_POST['bn_permanent_address']);
            $en_permanent_address = trim( $_POST['en_permanent_address']);
            $bn_speech_title =trim($_POST['bn_speech_title']);
            $en_speech_title =trim($_POST['en_speech_title']);
            $bn_speech = trim($_POST['bn_speech']);
            $en_speech = trim($_POST['en_speech']);
            
           
                 $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `bn_name` ='$bn_name' AND `en_name` = '$en_name' AND `bn_designation` = '$bn_designation' AND `en_designation` = '$en_designation'AND `bn_mobile` = '$bn_mobile'AND `en_mobile` = '$en_mobile'AND `email` = '$email'AND `bn_degree` = '$bn_degree' AND `en_degree` = '$en_degree'AND `bn_dob` ='$bn_dob' AND `en_dob`='$en_dob' AND `bn_job_duration` = '$bn_job_duration'AND `en_job_duration` = '$en_job_duration'AND `bn_present_address` = '$bn_present_address'AND `en_present_address` = '$en_present_address'AND `bn_permanent_address` = '$bn_permanent_address'AND `en_permanent_address` = '$en_permanent_address'AND `bn_speech_title` = '$bn_speech_title'AND `en_speech_title` = '$en_speech_title'AND `bn_speech` = '$bn_speech'AND `en_speech` = '$en_speech'";




                    $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
                    
                    if($COUNT <1):
                        if ($_FILES["image_url"]["error"] > 0) {
                                $image_url = "No .jpg";
                                
                            } else {
                                $image_url = time().$_FILES["image_url"]["name"];
                                move_uploaded_file($_FILES["image_url"]["tmp_name"],"upload/" . $image_url);
                            }

                   $sql = "INSERT INTO $tbl_name SET `bn_name` ='$bn_name' , `en_name` = '$en_name' , `bn_designation` = '$bn_designation' , `en_designation` = '$en_designation', `bn_mobile` = '$bn_mobile', `en_mobile` = '$en_mobile',`email` = '$email', `bn_degree` = '$bn_degree' , `en_degree` = '$en_degree', `bn_dob` ='$bn_dob' , `en_dob`='$en_dob' , `bn_job_duration` = '$bn_job_duration', `en_job_duration` = '$en_job_duration', `bn_present_address` = '$bn_present_address',`en_present_address` = '$en_present_address', `bn_permanent_address` = '$bn_permanent_address', `en_permanent_address` = '$en_permanent_address',`bn_speech_title` = '$bn_speech_title', `en_speech_title` = '$en_speech_title', `bn_speech` = '$bn_speech', `en_speech` = '$en_speech', `image_url` = '$image_url', `created_by`='$user_no', `created_on`='$CURR_TIME'";
                            $result = mysqli_query($con,$sql);
                            if($result)
                            {
                                $mgs = "Data Insert Successfully!";
                                $class = "green_color alert alert-success col-md-6 alert-dismissable";

                            }
                            else
                            {
                                $mgs = "Data Insert Fail!";
                                $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
                            }
                        else:
                            $mgs = "Duplicate Entry!";
                            $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
                        endif;
         
    }

    if(isset($_POST['update']))
    {

            $bn_name = trim($_POST['bn_name']);
            $en_name = trim($_POST['en_name']);
            $previous_committee_member_id = $_POST['previous_committee_member_id'];
            $bn_designation =trim( $_POST['bn_designation']);
            $en_designation = trim($_POST['en_designation']);
            $bn_mobile =$_POST['bn_mobile'];
            $en_mobile =$_POST['en_mobile'];
            $email = $_POST['email'];
            $bn_degree = trim($_POST['bn_degree']);
            $en_degree =trim($_POST['en_degree']);
            $bn_dob = trim($_POST['bn_dob']);
            $en_dob = $_POST['en_dob'];
            $bn_job_duration = trim($_POST['bn_job_duration']);
            $en_job_duration = trim($_POST['en_job_duration']);
            $bn_present_address = trim($_POST['bn_present_address']);
            $en_present_address =trim( $_POST['en_present_address']);
            $bn_permanent_address =trim( $_POST['bn_permanent_address']);
            $en_permanent_address = trim( $_POST['en_permanent_address']);
            $bn_speech_title =trim($_POST['bn_speech_title']);
            $en_speech_title =trim($_POST['en_speech_title']);
            $bn_speech = trim($_POST['bn_speech']);
            $en_speech = trim($_POST['en_speech']);
            
        $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `bn_name` ='$bn_name' AND `en_name` = '$en_name' AND `bn_designation` = '$bn_designation' AND `en_designation` = '$en_designation'AND `bn_mobile` = '$bn_mobile'AND `en_mobile` = '$en_mobile'AND `email` = '$email'AND `bn_degree` = '$bn_degree' AND `en_degree` = '$en_degree'AND `bn_dob` ='$bn_dob' AND `en_dob`='$en_dob' AND `bn_job_duration` = '$bn_job_duration'AND `en_job_duration` = '$en_job_duration'AND `bn_present_address` = '$bn_present_address'AND `en_present_address` = '$en_present_address'AND `bn_permanent_address` = '$bn_permanent_address'AND `en_permanent_address` = '$en_permanent_address'AND `bn_speech_title` = '$bn_speech_title'AND `en_speech_title` = '$en_speech_title'AND `bn_speech` = '$bn_speech'AND `en_speech` = '$en_speech' AND `previous_committee_member_id` != '$previous_committee_member_id'";

            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
                if ($_FILES["image_url"]["error"] > 0) {
                    $image_url =$_POST['image_url'];
                    
                } else {
                    $image_url = time().$_FILES["image_url"]["name"];
                    move_uploaded_file($_FILES["image_url"]["tmp_name"],"upload/" . $image_url);
                }
                  $sql = "UPDATE $tbl_name SET `bn_name` ='$bn_name' , `en_name` = '$en_name' , `bn_designation` = '$bn_designation' , `en_designation` = '$en_designation', `bn_mobile` = '$bn_mobile', `en_mobile` = '$en_mobile',`email` = '$email', `bn_degree` = '$bn_degree' , `en_degree` = '$en_degree', `bn_dob` ='$bn_dob' , `en_dob`='$en_dob' , `bn_job_duration` = '$bn_job_duration', `en_job_duration` = '$en_job_duration', `bn_present_address` = '$bn_present_address',`en_present_address` = '$en_present_address', `bn_permanent_address` = '$bn_permanent_address', `en_permanent_address` = '$en_permanent_address',`bn_speech_title` = '$bn_speech_title', `en_speech_title` = '$en_speech_title', `bn_speech` = '$bn_speech', `en_speech` = '$en_speech' ,`image_url` = '$image_url' , `is_updated` = 1, `updated_by` = '$user_no' ,`updated_on` = '$CURR_TIME' WHERE `previous_committee_member_id` = '$previous_committee_member_id'";
                $result = mysqli_query($con,$sql);
                if($result)
                {
                    $mgs = "Data Update Successfully!";
                    $class = "green_color alert alert-success  alert-dismissable col-md-6";

                }
                else
                {
                    $mgs = "Data Update Fail!";
                    $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
                }
            else:
                $mgs = "Duplicate Entry!";
                $class = "red_color alert alert-warning alert-dismissable col-md-6 ";
            endif;
    }
?>
  
    <?php
        if(isset($_GET['edit'])):
        $id = $_GET['edit'];
        $sql = "SELECT * FROM $tbl_name WHERE `previous_committee_member_id` = '$id' ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="" enctype="multipart/form-data">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="previous_committee_member_id" value="<?=$result['previous_committee_member_id']?>" />
            </div>
        </div>
        
      <div class="form-group ">
            <label for="bn_name" class="control-label col-lg-2">নাম </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_name" type="text" value="<?=$result['bn_name']?>" required />
            </div>
            <label for="en_name" class="control-label col-lg-2">Name </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_name" type="text" value="<?=$result['en_name']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_designation" class="control-label col-lg-2">পদবী</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_designation" type="text" value="<?=$result['bn_designation']?>" required />
            </div>
             <label for="en_designation" class="control-label col-lg-2"> Designation</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_designation" type="text" value="<?=$result['en_designation']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_mobile" class="control-label col-lg-2">মোবাইল</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_mobile" type="text" value="<?=$result['bn_mobile']?>" required />
            </div>
            <label for="en_mobile" class="control-label col-lg-2"> Mobile</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_mobile" type="text" value="<?=$result['en_mobile']?>" required />
            </div>
        </div>

        
        <div class="form-group ">
            <label for="email" class="control-label col-lg-2">ই-মেইল </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="email" type="text" value="<?=$result['email']?>" required />
            </div>
        </div>
        
        <div class="form-group ">
            <label for="bn_degree" class="control-label col-lg-2">ডিগ্রী</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_degree" type="text" value="<?=$result['bn_degree']?>" required />
            </div>
            <label for="en_degree" class="control-label col-lg-2"> Degree</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_degree" type="text" value="<?=$result['en_degree']?>" required />
            </div>
        </div>

         <div class="form-group ">
            <label for="bn_dob" class="control-label col-lg-2">জন্ম তারিখ</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_dob" type="text" value="<?=$result['bn_dob']?>" required />
            </div>
            <label for="en_dob" class="control-label col-lg-2">Date Of Birth</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_dob" type="text" value="<?=$result['en_dob']?>" required />
            </div>
        </div>

       
        <div class="form-group ">
            <label for="bn_job_duration" class="control-label col-lg-2">চাকরীর সময়কাল</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_job_duration" type="text" value="<?=$result['bn_job_duration']?>" required />
            </div>
            <label for="en_job_duration" class="control-label col-lg-2">Job Duration</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_job_duration" type="text" value="<?=$result['en_job_duration']?>" required />
            </div>
        </div>

      
        <div class="form-group ">
            <label for="bn_present_address" class="control-label col-lg-2">বর্তমান ঠিকানা </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_present_address" type="text" value="<?=$result['bn_present_address']?>" required />
            </div>
            <label for="en_present_address" class="control-label col-lg-2">Present Address</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_present_address" type="text" value="<?=$result['en_present_address']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_permanent_address" class="control-label col-lg-2">্থায়ী ঠিকানা </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_permanent_address" type="text" value="<?=$result['bn_permanent_address']?>" required />
            </div>
             <label for="en_permanent_address" class="control-label col-lg-2"> Permanent Address</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_permanent_address" type="text" value="<?=$result['en_permanent_address']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_speech_title" class="control-label col-lg-2">বক্তব্যের শিরোনাম </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_speech_title" type="text" value="<?=$result['bn_speech_title']?>" required />
            </div>
             <label for="en_speech_title" class="control-label col-lg-2">Speech Title</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_speech_title" type="text" value="<?=$result['en_speech_title']?>" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_speech" class="control-label col-lg-2">বক্তব্য</label>
            <div class="col-lg-4">
               <textarea  class=" form-control" id="" name="bn_speech" ><?=$result['bn_speech']?></textarea>
            </div>
             <label for="en_speech" class="control-label col-lg-2">Speech</label>
            <div class="col-lg-4">
                <textarea  class=" form-control" id="" name="en_speech" ><?=$result['en_speech']?></textarea> 
            </div>
        </div>
        <div class="form-group ">
            <label for="image_url" class="control-label col-lg-2"> ছবি</label>
            <div class="col-lg-4">
                <input type="file"  name="image_url" id="" value="<?=$result['image_url']?>">
                <img src="upload/<?=$result['image_url']?>" height="60" width="60"/> 
            </div>
           <div>
                <input type="hidden" name="image_url" value="<?=$result['image_url']?>" />
            </div>
        </div>
       <div class="form-group">
            <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-3 col-xs-offset-3 col-lg-5">
                <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
    
    <?php
        else:
    ?>

    <form class="cmxform form-horizontal " id="signupForm" method="post" action="" enctype="multipart/form-data">
        <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-2 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            
        </div>
       
        <div class="form-group ">
            <label for="bn_name" class="control-label col-lg-2">নাম </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_name" type="text" required />
            </div>
             <label for="en_name" class="control-label col-lg-2">Name </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_name" type="text" required />
            </div>
        </div>

       <div class="form-group ">
            <label for="bn_designation" class="control-label col-lg-2">পদবী 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_designation" type="text" required />
            </div>
             <label for="en_designation" class="control-label col-lg-2">Designation
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_designation" type="text" required />
            </div>
        </div>

          <div class="form-group ">
            <label for="bn_mobile" class="control-label col-lg-2">মোবাইল 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_mobile" type="text" required />
            </div>
            <label for="en_mobile" class="control-label col-lg-2"> Mobile
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_mobile" type="text" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="email" class="control-label col-lg-2">ই-মেইল 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="email" type="text" required />
            </div>
        </div>
        
       
        <div class="form-group ">
            <label for="bn_degree" class="control-label col-lg-2">ডিগ্রী 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_degree" type="text" required />
            </div>
             <label for="en_degree" class="control-label col-lg-2"> Degree
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_degree" type="text" required />
            </div>

        </div>

        
         <div class="form-group ">
            <label for="bn_dob" class="control-label col-lg-2">জন্ম তারিখ
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_dob" type="text" required />
            </div>
            <label for="en_dob" class="control-label col-lg-2">Date Of Birth
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_dob" type="text" required />
            </div>
        </div>

        
         <div class="form-group ">
            <label for="bn_job_duration" class="control-label col-lg-2">চাকরীর সময়কাল
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_job_duration" type="text" required />
            </div>
            <label for="en_job_duration" class="control-label col-lg-2"> Job Duration
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_job_duration" type="text" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_present_address" class="control-label col-lg-2">বর্তমান ঠিকানা 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_present_address" type="text" required />
            </div>
             <label for="en_present_address" class="control-label col-lg-2"> Present Address
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_present_address" type="text" required />
            </div>
        </div>

        <div class="form-group ">
            <label for="bn_permanent_address" class="control-label col-lg-2">স্থায়ী ঠিকানা 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_permanent_address" type="text" required />
            </div>
             <label for="en_permanent_address" class="control-label col-lg-2">Permanent Address
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_permanent_address" type="text" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_speech_title" class="control-label col-lg-2">বক্তব্যের শিরোনাম 
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="bn_speech_title" type="text" required />
            </div>
             <label for="en_speech_title" class="control-label col-lg-2">Speech Title
            </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="en_speech_title" type="text" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="bn_speech" class="control-label col-lg-2">বক্তব্য </label>
            <div class="col-lg-4">
                <textarea class=" form-control" id="" name="bn_speech" ></textarea> 
            </div>
            <label for="en_speech" class="control-label col-lg-2">Speech
        </label>
            <div class="col-lg-4">
                <textarea class=" form-control" id="" name="en_speech" ></textarea> 
            </div>

        </div>

       <div class="form-group ">
            <label for="image_url" class="control-label col-lg-2"> ছবি</label>
            <div class="col-lg-4">
                <input type="file"  name="image_url" id="">   
            </div>
        </div>
       
       <div class="form-group">
            <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-3 col-xs-offset-3 col-lg-5">
                <input type="submit" class="btn btn-primary" name="submit" value="Add" />
                
            </div>
        </div>
    </form>
    
    <?php
        endif;
    
    // How many adjacent pages should be shown on each side?
    $adjacents = 3;
    
    /* 
       First get total number of rows in data table. 
       If you have a WHERE clause in your query, make sure you mirror it here.
    */
    $query = "SELECT COUNT(*) as num FROM $tbl_name WHERE is_deleted = 0";
    $total_pages = mysqli_fetch_array(mysqli_query($con,$query));
    $total_pages = $total_pages['num'];
    
    /* Setup vars for query. */
    $limit = 15; 
    if(isset($_GET['page']))
    {                               //how many items to show per page
        $page = $_GET['page'];
    }
    else
    $page = 1;
    
    if($page) 
        $start = ($page - 1) * $limit;          //first item to display on this page
    else
        $start = 0;                             //if no page var is given, set start to 0
    
    /* Get data. */
    $sql = "SELECT * FROM $tbl_name 
                 
                WHERE $tbl_name.is_deleted = 0       
                LIMIT $start, $limit";
    $result = mysqli_query($con,$sql);
    
    /* Setup page vars for display. */
    if ($page == 0) $page = 1;                  //if no page var is given, default to 1.
    $prev = $page - 1;                          //previous page is page - 1
    $next = $page + 1;                          //next page is page + 1
    $lastpage = ceil($total_pages/$limit);      //lastpage is = total pages / items per page, rounded up.
    $lpm1 = $lastpage - 1;                      //last page minus 1
    
    /* 
        Now we apply our rules and draw the pagination object. 
        We're actually saving the code to a variable in case we want to draw it more than once.
    */
    $pagination = "";
    if($lastpage > 1)
    {   
        $pagination .= "<div class=\"pagination\">";
        //previous button
        if ($page > 1) 
            $pagination.= "<a href=\"$targetpage?page=$prev\"><< previous</a>";
        else
            $pagination.= "<span class=\"disabled\"><< previous</span>";    
        
        //pages 
        if ($lastpage < 7 + ($adjacents * 2))   //not enough pages to bother breaking it up
        {   
            for ($counter = 1; $counter <= $lastpage; $counter++)
            {
                if ($counter == $page)
                    $pagination.= "<span class=\"current\">$counter</span>";
                else
                    $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
            }
        }
        elseif($lastpage > 5 + ($adjacents * 2))    //enough pages to hide some
        {
            //close to beginning; only hide later pages
            if($page < 1 + ($adjacents * 2))        
            {
                for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<span class=\"current\">$counter</span>";
                    else
                        $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
                }
                $pagination.= "...";
                $pagination.= "<a href=\"$targetpage?page=$lpm1\">$lpm1</a>";
                $pagination.= "<a href=\"$targetpage?page=$lastpage\">$lastpage</a>";       
            }
            //in middle; hide some front and some back
            elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
            {
                $pagination.= "<a href=\"$targetpage?page=1\">1</a>";
                $pagination.= "<a href=\"$targetpage?page=2\">2</a>";
                $pagination.= "...";
                for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<span class=\"current\">$counter</span>";
                    else
                        $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
                }
                $pagination.= "...";
                $pagination.= "<a href=\"$targetpage?page=$lpm1\">$lpm1</a>";
                $pagination.= "<a href=\"$targetpage?page=$lastpage\">$lastpage</a>";       
            }
            //close to end; only hide early pages
            else
            {
                $pagination.= "<a href=\"$targetpage?page=1\">1</a>";
                $pagination.= "<a href=\"$targetpage?page=2\">2</a>";
                $pagination.= "...";
                for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
                {
                    if ($counter == $page)
                        $pagination.= "<span class=\"current\">$counter</span>";
                    else
                        $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
                }
            }
        }
        
        //next button
        if ($page < $counter - 1) 
            $pagination.= "<a href=\"$targetpage?page=$next\">next >></a>";
        else
            $pagination.= "<span class=\"disabled\">next >></span>";
        $pagination.= "</div>\n";       
    }
?>
<div style="overflow: auto">
       
    <table   class="table table-bordered table-hover table-responsive table-condensed table-striped dataTable col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
        <tr>
            <th><center>নং</center></th>
            <th><center>নাম</center></th>
            <th><center>Name</center></th>
            <th><center>পদবী</center></th>
            <th><center>Designation</center></th>
            <th><center>মোবাইল</center></th>
            <th><center>Mobile</center></th>
            <th><center>ই-মেইল </center></th>
            <th><center>ডিগ্রী</center></th>
            <th><center> Degree</center></th>
            <th><center>জন্ম তারিখ</center></th>
            <th><center>Date Of Birth</center></th>
            <th><center>চাকরীর সময়কাল</center></th>
            <th><center> Job Duration</center></th>
            <th><center>বর্তমান ঠিকানা </center></th>
            <th><center>Present Address</center></th>
            <th><center>স্থায়ী ঠিকানা </center></th>
            <th><center>Permanent Addres</center></th>
           <th><center>বক্তব্যের শিরোনাম </center></th>
            <th><center>Speech Title</center></th>
            <th><center>বক্তব্য</center></th>
            <th><center>Speech</center></th>
             <th><center>ছবি</center></th>  
           <th><center>একশন</center></th>






            

        </tr>
    <?php $i=$page*$limit-$limit+1; while($row = mysqli_fetch_array($result)):?>
        <tr>
            <td><?=$i++?></td>
            <td><?=$row['bn_name']?></td>
            <td><?=$row['en_name']?></td>
            <td><?=$row['bn_designation']?></td>
            <td><?=$row['en_designation']?></td>
            <td><?=$row['bn_mobile']?></td>
            <td><?=$row['en_mobile']?></td>
            <td><?=$row['email']?></td>
            <td><?=$row['bn_degree']?></td>
            <td><?=$row['en_degree']?></td>
            <td><?=$row['bn_dob']?></td>
            <td><?=$row['en_dob']?></td>
            <td><?=$row['bn_job_duration']?></td>
            <td><?=$row['en_job_duration']?></td>
            <td><?=$row['bn_present_address']?></td>
            <td><?=$row['en_present_address']?></td>
            <td><?=$row['bn_permanent_address']?></td>
            <td><?=$row['en_permanent_address']?></td>
            <td><?=$row['bn_speech_title']?></td>
            <td><?=$row['en_speech_title']?></td>
            <td><?=$row['bn_speech']?></td>
            <td><?=$row['en_speech']?></td>
            <td><a class="btn btn-primary" target="_blank" href="upload/<?=$row['image_url']?>"><i class="fa fa-eye" aria-hidden="true"></i> View</a></td>
            <td>
                <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['previous_committee_member_id']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                <a onclick="return confirm('Are you Sure Want to Delete?');" href="<?=$targetpage.'?delete='.$row['previous_committee_member_id']?>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
            </td>
        </tr>
    <?php endwhile;?>
    </table>
</div>

<?=$pagination?>
    
    <!---main content end---->
<?php include 'include/footer.php';?>
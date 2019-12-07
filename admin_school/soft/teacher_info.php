<?php include 'include/header.php';?>
<?php $table_heading = "শিক্ষক-শিক্ষিকার তথ্য";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
  
<?php
        $tbl_name="teachers_info";       //your table name
        $targetpage = "teacher_info.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';
    if(isset($_GET['delete']))
    {
        $ID = $_GET['delete'];
        $sql = "UPDATE $tbl_name SET `is_deleted` = 1 ,`deleted_by` = '$user_no', `deleted_on` = '$CURR_TIME' WHERE teacher_info_no = $ID";
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
            $teacher_name = trim($_POST['teacher_name']);
            $designation = $_POST['designation'];
            $contact =$_POST['contact'];
            $email = $_POST['email'];
            $about_teacher = trim($_POST['about_teacher']);
            

           
                 $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `teacher_name` ='$teacher_name' AND `designation` = '$designation' AND `contact` = '$contact' AND `email` = '$email'";
                    $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
                    
                    if($COUNT <1):
                        if ($_FILES["image_url"]["error"] > 0) {
                                $image_url = "No Image Uploaded";
                                
                            } else {
                                $image_url = time().$_FILES["image_url"]["name"];
                                move_uploaded_file($_FILES["image_url"]["tmp_name"],"upload/" . $image_url);
                            }

                 echo  $sql = "INSERT INTO $tbl_name SET `teacher_name` = '$teacher_name',`designation` = '$designation',`contact` = '$contact',`email` = '$email',`about_teacher` = '$about_teacher', `image_url` = '$image_url', `created_by`='$user_no', `created_on`='$CURR_TIME'";
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
            $teacher_name = trim($_POST['teacher_name']);
            $teacher_info_no = $_POST['teacher_info_no'];
            $designation = $_POST['designation'];
            $contact =$_POST['contact'];
            $email = $_POST['email'];
            $about_teacher = $_POST['about_teacher'];
            
        $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `teacher_name` = '$teacher_name' AND `designation` = '$designation' AND `contact` = '$contact' AND `email` = '$email' AND `teacher_info_no` != '$teacher_info_no'";
            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
                if ($_FILES["image_url"]["error"] > 0) {
                    $image_url = "No Image Uploaded";
                    
                } else {
                    $image_url = time().$_FILES["image_url"]["name"];
                    move_uploaded_file($_FILES["image_url"]["tmp_name"],"upload/" . $image_url);
                }
                  $sql = "UPDATE $tbl_name SET `teacher_name` = '$teacher_name' ,`designation` = '$designation' ,`contact` = '$contact' ,`email` = '$email' ,`about_teacher` = '$about_teacher' ,`image_url` = '$image_url' , `is_updated` = 1, `updated_by` = '$user_no' ,`updated_on` = '$CURR_TIME' WHERE `teacher_info_no` = '$teacher_info_no'";
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
        $sql = "SELECT * FROM $tbl_name WHERE `teacher_info_no` = '$id' ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="" enctype="multipart/form-data">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-1 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="teacher_info_no" value="<?=$result['teacher_info_no']?>" />
            </div>
        </div>
        
      <div class="form-group ">
            <label for="teacher_name" class="control-label col-lg-3">শিক্ষক/শিক্ষিকার নাম </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="teacher_name" type="text" value="<?=$result['teacher_name']?>" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="designation" class="control-label col-lg-3">পদবী</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="designation" type="text" value="<?=$result['designation']?>" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="contact" class="control-label col-lg-3">মোবাইল নাম্বার</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="contact" type="text" value="<?=$result['contact']?>" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="email" class="control-label col-lg-3">ই-মেইল</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="email" type="text" value="<?=$result['email']?>" required />
            </div>
        </div>
        
        <div class="form-group ">
            <label for="about_teacher" class="control-label col-lg-3">শিক্ষক/শিক্ষিকার সম্পর্কে</label>
            <div class="col-lg-4">
                <textarea  class=" form-control" id="" name="about_teacher" type="text"><?=$result['about_teacher']?></textarea> 
            </div>
        </div>
        <div class="form-group ">
            <label for="image_url" class="control-label col-lg-3"> ছবি</label>
            <div class="col-lg-4">
                <input type="file"  name="image_url" id="" value="<?=$result['image_url']?>">
                    
            </div>
        </div>
       <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 col-lg-5">
                <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
    
    <?php
        else:
    ?>

    <form class="cmxform form-horizontal " id="signupForm" method="post" action="" enctype="multipart/form-data">
        <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-1 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            
        </div>
       
        <div class="form-group ">
            <label for="teacher_name" class="control-label col-lg-3">শিক্ষক/শিক্ষিকার নাম </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="teacher_name" type="text" required />
            </div>
        </div>
         <div class="form-group ">
            <label for="designation" class="control-label col-lg-3">পদবী
</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="designation" type="text" required />
            </div>
        </div>
        
       
        <div class="form-group ">
            <label for="contact" class="control-label col-lg-3">মোবাইল নাম্বার
</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="contact" type="text" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="email" class="control-label col-lg-3">ই-মেইল
</label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="email" type="text" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="about_teacher" class="control-label col-lg-3">শিক্ষক/শিক্ষিকার সম্পর্কে
</label>
            <div class="col-lg-4">
                <textarea class=" form-control" id="" name="about_teacher" type="text" required></textarea> 
            </div>
        </div>
         <div class="form-group ">
            <label for="image_url" class="control-label col-lg-3"> ছবি</label>
            <div class="col-lg-4">
                <input type="file"  name="image_url" id="">   
            </div>
        </div>
       
       <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 col-lg-5">
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

    <table   class="table table-bordered table-hover dataTable col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
        <tr>
            <th><center>নং</center></th>
            <th><center>শিক্ষক/শিক্ষিকার নাম</center></th>
            <th><center>পদবী</center></th>
            <th><center>ছবি</center></th>
            <th><center>মোবাইল নাম্বার</center></th>
            <th><center>ই-মেইল</center></th>
            <th><center>শিক্ষক/শিক্ষিকার সম্পর্কে</center></th>
           <th><center>একশন</center></th>






            

        </tr>
    <?php $i=$page*$limit-$limit+1; while($row = mysqli_fetch_array($result)):?>
        <tr>
            <td><?=$i++?></td>
            <td><?=$row['teacher_name']?></td>
            <td><?=$row['designation']?></td>
            <td><a class="btn btn-primary" target="_blank" href="upload/<?=$row['image_url']?>"><i class="fa fa-eye" aria-hidden="true"></i> View</a></td>
            <td><?=$row['contact']?></td>
            <td><?=$row['email']?></td>
            <td><?=$row['about_teacher']?></td>
            <td>
                <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['teacher_info_no']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                <a onclick="return confirm('Are you Sure Want to Delete?');" href="<?=$targetpage.'?delete='.$row['teacher_info_no']?>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
            </td>
        </tr>
    <?php endwhile;?>
    </table>

<?=$pagination?>
    
    <!---main content end---->
<?php include 'include/footer.php';?>
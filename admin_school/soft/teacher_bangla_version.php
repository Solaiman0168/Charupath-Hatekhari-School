<?php include 'include/header.php';?>
<?php $table_heading = "শিক্ষক/শিক্ষিকা(বাংলা ভার্সন)";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
   
<?php
        $tbl_name="teacher_bangla_version";       //your table name
        $targetpage = "teacher_bangla_version.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';
    if(isset($_GET['delete']))
    {
        $ID = $_GET['delete'];
        $sql = "UPDATE $tbl_name SET `is_deleted` = 1 ,`deleted_by` = '$user_no', `deleted_on` = '$CURR_TIME' WHERE teacher_id = $ID";
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
            $class_name = trim($_POST['class_name']);
            $section_name = trim($_POST['section_name']);
            $teacher_info_no = $_POST['teacher_info_no'];
           $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0  AND `teacher_info_no` = '$teacher_info_no'  AND `class_name` ='$class_name' AND `section_name` = '$section_name'  ";
            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1):
                $sql = "INSERT INTO $tbl_name SET `teacher_info_no` = '$teacher_info_no', `class_name` = '$class_name',`section_name` = '$section_name',  `created_by`='$user_no', `created_on`='$CURR_TIME'";
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
            $class_name = trim($_POST['class_name']);
            $teacher_id = $_POST['teacher_id'];
            $section_name = trim($_POST['section_name']);
            $teacher_info_no = $_POST['teacher_info_no'];
          
            $SQL = "SELECT * FROM $tbl_name WHERE `is_deleted` = 0 AND `teacher_info_no` = '$teacher_info_no' AND `class_name` ='$class_name' AND `section_name` = '$section_name'  AND `teacher_id` != '$teacher_id'";
            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
               $sql = "UPDATE $tbl_name SET `teacher_info_no` = '$teacher_info_no' , `class_name` = '$class_name' ,`section_name` = '$section_name' , `is_updated` = 1, `updated_by` = $user_no ,`updated_on` = '$CURR_TIME' WHERE teacher_id = '$teacher_id'";
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
        $sql = "SELECT * FROM $tbl_name WHERE teacher_id = $id";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-1 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="teacher_id" value="<?=$result['teacher_id']?>" />
            </div>
        </div>
        <div class="form-group ">
            <label for="teacher_info_no" class="control-label col-lg-3">শিক্ষক/শিক্ষিকার নাম</label>
            <div class="col-lg-4">
                 <select class="form-control" name="teacher_info_no">
                        <?php
                            $sql = "SELECT * FROM `teachers_info` ";
                            $result2 = mysqli_query($con,$sql);
                            while($row1 = mysqli_fetch_array($result2)):
                        ?>
                            <option value="<?=$row1['teacher_info_no']?>" <?php if($result['teacher_info_no'] == $row1['teacher_info_no'])  echo 'selected'; ?>><?=$row1['teacher_name']?></option>
                        <?php endwhile;?>
                    </select>  
            </div>
        </div>
        <div class="form-group ">
            <label for="class_name" class="control-label col-lg-3">ক্লাস </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="class_name" type="text" value="<?=$result['class_name']?>" required />
            </div>
        </div>
        <div class="form-group ">
            <label for="section_name" class="control-label col-lg-3">সেকশন </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="section_name" type="text" value="<?=$result['section_name']?>"/>
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
     <form class="cmxform form-horizontal " id="signupForm" method="post" action="">
          <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
                <div  class=" col-md-6 col-md-offset-1 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
        
        </div>
        
        <div class="form-group ">
            <label for="teacher_info_no" class="control-label col-lg-3">শিক্ষক/শিক্ষিকার নাম</label>
            <div class="col-lg-4">
                 <select class="form-control" name="teacher_info_no">
                        <?php
                            $sql = "SELECT * FROM `teachers_info`";
                            $result2 = mysqli_query($con,$sql);
                            while($row1 = mysqli_fetch_array($result2)):
                        ?>
                            <option value="<?=$row1['teacher_info_no']?>"><?=$row1['teacher_name']?></option>
                        <?php endwhile;?>
                    </select>  
            </div>
        </div> 
       <div class="form-group ">
            <label for="class_name" class="control-label col-lg-3">ক্লাস </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="class_name" type="text"  required />
            </div>
        </div>
        <div class="form-group ">
            <label for="section_name" class="control-label col-lg-3">সেকশন </label>
            <div class="col-lg-4">
                <input class=" form-control" id="" name="section_name" type="text"/>
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
                LEFT JOIN `teachers_info` ON `teachers_info`.`teacher_info_no` = $tbl_name.`teacher_info_no` 
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
            <th>নং</th>
            <th>শিক্ষক/শিক্ষিকার নাম</th>
            
            <th>ক্লাস</th>
            <th>সেকশন</th>
            <th>একশন</th>
        </tr>
    <?php $i=$page*$limit-$limit+1; while($row = mysqli_fetch_array($result)):?>
        <tr>
            <td><?=$i++?></td>
            <td><?=$row['teacher_name']?></td>
            
            <td><?=$row['class_name']?></td>
            <td><?=$row['section_name']?></td>
            <td>
                <a onclick="return confirm('Are you Sure Want to Edit?');" href="<?=$targetpage.'?edit='.$row['teacher_id']?>" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                <a onclick="return confirm('Are you Sure Want to Delete?');" href="<?=$targetpage.'?delete='.$row['teacher_id']?>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
            </td>
        </tr>
    <?php endwhile;?>
    </table>

<?=$pagination?>
    
    <!---main content end---->






   
    
    
                  
                                
<?php include 'include/body-bottom.php';?>
<?php include 'include/footer.php';?>
<script type="text/javascript" src="../js/"></script>
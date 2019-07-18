<?php include 'include/header.php';?>
<?php $table_heading = "Address";?>
<?php include 'include/sidebar.php';?>
<?php include 'include/body-top.php';?>
   
<?php
        $tbl_name="address";       //your table name
        $targetpage = "address.php";   //your file name  (the name of this file)
    $user_no = 1;//$_SESSION['user']['USER_NO'];
    $CURR_TIME = date('Y-m-d :H:i:s'); 
        $mgs = '';


    if(isset($_POST['update']))
    {
            $location = trim($_POST['location']);
            $location2 = trim($_POST['location2']);
            $contact = trim($_POST['contact']);
            $contact2 = trim($_POST['contact2']);
            $email = trim($_POST['email']);
             $address_id = $_POST['address_id'];
            $SQL = "SELECT * FROM $tbl_name WHERE  `location` ='$location' AND `location2` ='$location2' AND `contact` ='$contact' AND `contact2` ='$contact2' AND `email` ='$email' AND `address_id` != '$address_id'";
            $COUNT = mysqli_num_rows(mysqli_query($con,$SQL));
            if($COUNT < 1): 
                   
             $sql = "UPDATE $tbl_name SET `location` = '$location' ,`location2` = '$location2' ,`contact` = '$contact' ,`contact2` = '$contact2' ,`email` = '$email' ,`is_updated` = 1, `updated_by` = $user_no ,`updated_on` = '$CURR_TIME' WHERE address_id = 1";
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
        $sql = "SELECT * FROM $tbl_name WHERE `address_id` = 1 ";
        $result = mysqli_fetch_array(mysqli_query($con,$sql));
    ?>
     <form class="cmxform form-horizontal " id="signupForm" method="post" action=""  enctype="multipart/form-data">
     <div class="form-group " <?php if($mgs=='')echo "style='display:none;'" ?>>
            <div class=" col-md-6 col-md-offset-1 <?=$class?>"><a href="#" class="close" data-dismiss="alert" aria-label="close">×</a><?=$mgs?></div>
            <div>
                <input type="hidden" name="address_id" value="<?=$result['address_id']?>" />
            </div>
        </div>
        <div class="form-group ">
            <label for="location" class="control-label col-lg-3">Address Line 1:  </label>
            <div class="col-lg-4">
                <input type="text" class=" form-control" id="" name="location" type="text" required style="height: 60px; width: 400p;" value="<?=$result['location']?>">
                
            </div>
        </div>
        <div class="form-group ">
            <label for="location" class="control-label col-lg-3">Address Line 2:  </label>
            <div class="col-lg-4">
                <input type="text" class=" form-control" id="" name="location2" type="text"  style="height: 60px; width: 400p;" value="<?=$result['location2']?>">
            </div>
        </div>
        <div class="form-group ">
            <label for="contact" class="control-label col-lg-3">Mobile NO 1: </label>
            <div class="col-lg-4">
                <input type="text" class=" form-control" id="" name="contact" type="text" required style="height: 60px; width: 400p;" value="<?=$result['contact']?>">
                
            </div>
        </div>
        <div class="form-group ">
            <label for="contact" class="control-label col-lg-3">Mobile NO 2: </label>
            <div class="col-lg-4">
                <input type="text" class=" form-control" id="" name="contact2" type="text"  style="height: 60px; width: 400p;" value="<?=$result['contact2']?>">
                
            </div>
        </div>
        <div class="form-group ">
            <label for="email" class="control-label col-lg-3">E-mail:  </label>
            <div class="col-lg-4">
                <input type="text" class=" form-control" id="" name="email" type="text" required  style="height: 60px; width: 400p;" value="<?=$result['email']?>">
               
            </div>
        </div>
        
       <div class="form-group">
            <div class="col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 col-lg-5">
              <input type="submit" class="btn btn-primary" name="update" value="Update" />
                
            </div>
        </div>
    </form>
                                
<?php include 'include/body-bottom.php';?>
<?php include 'include/footer.php';?>
<script type="text/javascript" src="../js/"></script>
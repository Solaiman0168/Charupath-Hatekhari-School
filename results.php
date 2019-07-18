<?php $page_title = "Results | EHAHS";?>
<?php include 'header.php';?>
<?php include 'menu.php';?>


 


                <div class=" edu_brief">
            <center><h2>এক নজরে চারুপাঠ একাডেমি,রুপনগর শাখা এর সাম্প্রতিক ফলাফল চিএ</h2></center>
        </div>
<!-- //banner -->
    <div class="container">

                       <div class="jsc_result"  style="margin-top:35px" >
            <h2>জে.এস.সি.</h2>
        </div> 
 <?php
    $tbl_name="home_result";
    $sql = "SELECT * FROM $tbl_name 
                 
                WHERE $tbl_name.is_deleted = 0 AND  $tbl_name.`bn_exam_name`=2  ";
    $result = mysqli_query($con,$sql);
   
?>
            <div class="container col-xs-12 col-sm-12 col-md-8  col-lg-8 col-md-offset-2"  style="margin-top:20px">
        <div class="row">
            <div class="table-responsive">

                <table class="table table-striped table-bordered table-hover">
                    <thead >
                        <tr class="success">
                            <th><center>সন</center></th>
                            <th><center>এ+</center></th>
                            <th><center>এ</center></th>   
                            <th><center>এ-</center></th>
                            <th><center>এফ</center></th>
                            <th><center>পাশের হার (%)</center></th>

                            
                        </tr>
                    </thead>
                    <tbody>
                        <?php while($row = mysqli_fetch_array($result)):?>
            <tr>
               
                <td><?=$row['bn_year']?></td>
               
                <td><?=$row['bn_a_plus']?></td>
                
                <td><?=$row['bn_a']?></td>
            
                <td><?=$row['bn_a_minus']?></td>
               
                <td><?=$row['bn_f']?></td>
               
                <td><?=$row['bn_rate_pass']?></td>
               
                
              
            </tr>
        <?php endwhile;?>
                       

                    </tbody>
                </table>    
                

            </div>
        </div>

    </div>
   </div>
                            
    <div class="container">
                                <div class="jsc_result" style="margin-top:35px" >
            <h2>৫ম শ্রেণির সমাপনী (পি.ই.সি.)</h2>
        </div> 

         <?php
            $tbl_name="home_result";
            $sql = "SELECT * FROM $tbl_name  WHERE $tbl_name.is_deleted = 0 AND  $tbl_name.`bn_exam_name`=1  ";
            $result = mysqli_query($con,$sql);
           
        ?>
    

            <div class="container col-xs-12 col-sm-12 col-md-8  col-lg-8 col-md-offset-2"  style="margin-top:20px">
        <div class="row">
            <div class="table-responsive">

                <table class="table table-striped table-bordered table-hover">
                    <thead >
                        <tr class="success">
                            <th><center>সন</center></th>
                            <th><center>এ+</center></th>
                            <th><center>এ</center></th>   
                            <th><center>এ-</center></th>
                            <th><center>এফ</center></th>
                            <th><center>পাশের হার (%)</center></th>

                            
                        </tr>
                    </thead>
                    <tbody>
                         <?php while($row = mysqli_fetch_array($result)):?>
            <tr>
               
                <td><?=$row['bn_year']?></td>
               
                <td><?=$row['bn_a_plus']?></td>
                
                <td><?=$row['bn_a']?></td>
            
                <td><?=$row['bn_a_minus']?></td>
               
                <td><?=$row['bn_f']?></td>
               
                <td><?=$row['bn_rate_pass']?></td>
               
                
              
            </tr>
        <?php endwhile;?>
                       
                    </tbody>
                </table>    
                

            </div>
        </div>

    </div>

               </div>

        <div class="container">
                                <div class="jsc_result" style="margin-top:35px" >
            <h2>এসএসসি</h2>
        </div> 

         <?php
            $tbl_name="home_result";
            $sql = "SELECT * FROM $tbl_name  WHERE $tbl_name.is_deleted = 0 AND  $tbl_name.`bn_exam_name`=3  ";
            $result = mysqli_query($con,$sql);
           
        ?>
    

            <div class="container col-xs-12 col-sm-12 col-md-8  col-lg-8 col-md-offset-2"  style="margin-top:20px">
        <div class="row">
            <div class="table-responsive">

                <table class="table table-striped table-bordered table-hover">
                    <thead >
                        <tr class="success">
                            <th><center>সন</center></th>
                            <th><center>এ+</center></th>
                            <th><center>এ</center></th>   
                            <th><center>এ-</center></th>
                            <th><center>এফ</center></th>
                            <th><center>পাশের হার (%)</center></th>

                            
                        </tr>
                    </thead>
                    <tbody>
                         <?php while($row = mysqli_fetch_array($result)):?>
            <tr>
               
                <td><?=$row['bn_year']?></td>
               
                <td><?=$row['bn_a_plus']?></td>
                
                <td><?=$row['bn_a']?></td>
            
                <td><?=$row['bn_a_minus']?></td>
               
                <td><?=$row['bn_f']?></td>
               
                <td><?=$row['bn_rate_pass']?></td>
               
                
              
            </tr>
        <?php endwhile;?>
                       
                    </tbody>
                </table>    
                

            </div>
        </div>

    </div>

               </div>

<?php include 'footer.php';?>
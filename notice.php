<?php $page_title = "নোটিস | EHAHS";?>
<?php include 'header.php';?>
<?php include 'menu.php';?>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="teacher_search">
                <div class="search_head">
                    <h4>Search Notice by Date</h4>
                </div>
                <div class="search_body">
                    <form class="cmxform form-horizontal " id="" method="post" action="">
                        <div class="form-group ">
                            <label for="homme_district" class="control-label col-lg-3">From  </label>
                            <div class="col-lg-8">
                                <input class=" form-control" id="firstname" name="from_date" type="date" required />
                            </div>
                        </div>
                        <div class="form-group ">
                            <label for="homme_district" class="control-label col-lg-3">To  </label>
                            <div class="col-lg-8">
                                <input class=" form-control" id="firstname" name="to_date" type="date" required />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-offset-3 col-lg-3">
                                <input type="submit" class="btn btn-primary" value="Show Result" name="show_result" id="btnsave"/>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


        <div class="container">
            <div class="container col-xs-12 col-sm-12 col-md-10  col-lg-10 col-md-offset-1"  style="margin-top:35px">
        <div class="row">
            <div class="table-responsive">

                <table class="table table-striped table-bordered table-hover">
                    <thead >
                        <tr class="success">
                             <th><center>নং</center></th>
                            <th><center>নোটিস টাইটেল</center></th>
                            <th><center>তারিখ</center></th>
                            <th><center>ডাউনলোড</center></th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            if(isset($_POST['show_result'])){
                                $from_date = $_POST['from_date'];
                                $to_date = $_POST['to_date'];
                                $sql = "SELECT * FROM `notice_setup` WHERE `date` BETWEEN '$from_date' AND '$to_date' AND is_deleted = 0";
                                $query = mysqli_query($con,$sql);
                                $i=1;
                                while($row = mysqli_fetch_array($query)):
                        ?>
        <tr>
            <td><?=$i++?></td>
            <td><?=$row['bn_title']?></td>
            <td><?=$row['date']?></td>
             <td><a class="btn btn-primary" target="_blank" href="admin_school/soft/upload/<?=$row['bn_image_url']?>"><i class="fa fa-file-pdf-o" aria-hidden="true"></i>&nbsp; Download</a></td>
            
        </tr>
        <?php endwhile; 
        }else{
            $sql = "SELECT * FROM `notice_setup` WHERE is_deleted = 0 order by `date` desc";
            $query = mysqli_query($con,$sql);
            $i=1;
            while($row = mysqli_fetch_array($query)):
        ?>
        <tr>
            <td><?=$i++?></td>
            <td><?=$row['bn_title']?></td>
            <td><?=$row['date']?></td>
             <td><a class="btn btn-primary" target="_blank" href="../emarat_school/soft/upload/<?=$row['bn_image_url']?>"><i class="fa fa-file-pdf-o" aria-hidden="true"></i>&nbsp; Download</a></td>
            
        </tr>
        <?php endwhile; }?>
                    </tbody>
               
        </table>
                

            </div>
        </div>

    </div>



               </div>
                 


<?php include 'footer.php';?>
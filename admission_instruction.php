<?php $page_title = "Admission News | Charupath Haatekhori School";?>
<?php include 'header.php';?>
<?php include 'menu.php';?>


<div class="present_committee">
    <h1>ভর্তি তথ্য</h1>
</div>
<?php
    $sql = "SELECT * FROM `admission_news` WHERE is_deleted = 0";
    $result = mysqli_query($con,$sql);
    $i=1;
?>

<div class="table-responsive col-md-8 col-md-offset-2">

                <table class="table table-striped table-bordered table-hover">
                    <thead >
                        <tr class="success">
                            <th><center>Sl</center></th>
                            <th><center>Title</center></th>
                            <th><center>Action</center></th>
                                                    
                        </tr>
                    </thead>
                    <tbody>
                      <?php while($row = mysqli_fetch_array($result)):
                             
                       ?>
                        <tr>
                            <th scope="row"><?=$i++?></th>
                            
                            <td title="Click in teachers image to view details"><?=$row['title']?></td>
                            <td><a class="btn btn-primary" target="_blank" href="admin_school/soft/upload/<?=$row['image_url']?>"><i class="fa fa-file-pdf-o" aria-hidden="true"></i>&nbsp; View</a></td>
                            
                            
                        </tr>
                          <?php endwhile;  ?> 
                       
                    </tbody>
                </table>    
            </div>













<div class="clearfix"></div>

<?php include 'footer.php';?>
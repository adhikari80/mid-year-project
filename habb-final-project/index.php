
<!DOCTYPE html>
<html>
<head>
	<title>Welcome To HABB </title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>

<div class="container">
	<div class="jumbotron"> <h2 class="text-center text-success"> Welcome To HABB Parking </h2> 
		<p class="text-center mt-2 text-primary">"Trust us with your vehicle & enjoy your moment."</p>
<h3 class="text-center mt-5">We Provide</h3>
<div class="row">
	<div class="col-sm-4">
		<div class="card">
  <img class="card-img-top" src="images/4-wheelers.jif" alt="Card image cap" class="img-fluid">
  <div class="card-body">
    <h5 class="card-title">4 Wheelers</h5>
    <a href="#" class="btn btn-success" data-toggle="modal" data-target="#four_wheelers">Book Parking</a>
  </div>
</div>
	</div>
		<div class="col-sm-4">
				<div class="card">
  <img class="card-img-top img-fluid" src="images/2-wheeler.png">
  <div class="card-body">
    <h5 class="card-title text-center">Two Wheelers</h5>

    <a href="#" class="btn btn-success" data-toggle="modal" data-target="#two_wheelers">Book Parking</a>
  </div>
</div>
	</div>
		<div class="col-sm-4">
				<div class="card">
  <img class="card-img-top img-fluid habb-img" src="images/other-wheelers.png">
  <div class="card-body">
    <h5 class="card-title text-center">4+ Wheelers</h5>
    <a href="#" class="btn btn-success"  data-toggle="modal" data-target="#other_wheelers">Book Parking</a>
  </div>
</div>
	</div>
</div>

<?php include "price-table.php"; ?>
<!-- Button trigger modal -->

<?php 
include('includes/dbconnection.php');
if(isset($_POST['habb_booking'])){
	$habb_wheelers_type = $_POST['habb_wheelers_type'];
$habb_fullname = $_POST['habb_fullname'];
$habb_vehicle_number = $_POST['habb_vehicle_number'];
$habb_contact_number = $_POST['habb_contact_number'];
if($habb_fullname=="" || $habb_vehicle_number=="" || $habb_contact_number==""){
	echo "<script>alert('All fields are required!!!');</script>";
}
else{
     

     		$query =mysqli_query($con,"insert into habb_booking(fullname,vehicle_number,wheelers,contact_number) value('$habb_fullname','$habb_vehicle_number','$habb_wheelers_type','$habb_contact_number')");
	if($query){
		echo "<script>alert('congratulations your parking has been booked successfully. Please arrive within 1Hour to claim your Spot');</script>";
	}
     
}
}
?>
<!-- Modal -->
<div class="modal fade" id="four_wheelers" tabindex="-1" role="dialog" aria-labelledby="four_wheelers" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="four_wheelers">Book Four Wheelers For Me</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<form method="post">
	<input type="hidden" name="habb_wheelers_type" value="4">
  <div class="form-group">
    <label for="exampleInputEmail1">Full Name</label>
    <input type="text" class="form-control" name="habb_fullname" placeholder="Eg:(Bhaskar Adhikari)" required="">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Vehicle Number</label>
    <input type="text" class="form-control" name="habb_vehicle_number" placeholder="Eg: ST 03-1234" required="" >
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">Contact Number</label>
    <input type="text" class="form-control" name="habb_contact_number" placeholder="Eg: 9876543210" required="">
  </div>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <input type="submit" class="btn btn-primary" value="Book Now" name="habb_booking">
     
</form>
      </div>
      <div class="modal-footer">
<h5 class="modal-title" id="four_wheelers">Book Four Wheelers For Me</h5>
      </div>
    </div>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="two_wheelers" tabindex="-1" role="dialog" aria-labelledby="two_wheelers" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="two_wheelers">Book Two Wheelers For Me</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<form method="post">
	<input type="hidden" name="habb_wheelers_type" value="2">
  <div class="form-group">
    <label for="exampleInputEmail1">Full Name</label>
    <input type="text" class="form-control" name="habb_fullname" placeholder="Eg:(Bhaskar Adhikari)" required="">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Vehicle Number</label>
    <input type="text" class="form-control" name="habb_vehicle_number" placeholder="Eg: ST 03-1234" required="" >
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">Contact Number</label>
    <input type="text" class="form-control" name="habb_contact_number" placeholder="Eg: 9876543210" required="">
  </div>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <input type="submit" class="btn btn-primary" value="Book Now" name="habb_booking">
     
</form>
      </div>
      <div class="modal-footer">
<h5 class="modal-title" id="four_wheelers">Book Two Wheelers For Me</h5>
      </div>
    </div>
  </div>
</div>



<!-- Modal -->
<div class="modal fade" id="other_wheelers" tabindex="-1" role="dialog" aria-labelledby="other_wheelers" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="other_wheelers">Book Four Plus Wheelers For Me</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<form method="post">
	<input type="hidden" name="habb_wheelers_type" value="4+">
  <div class="form-group">
    <label for="exampleInputEmail1">Full Name</label>
    <input type="text" class="form-control" name="habb_fullname" placeholder="Eg:(Bhaskar Adhikari)" required="">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Vehicle Number</label>
    <input type="text" class="form-control" name="habb_vehicle_number" placeholder="Eg: ST 03-1234" required="" >
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">Contact Number</label>
    <input type="text" class="form-control" name="habb_contact_number" placeholder="Eg: 9876543210" required="">
  </div>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <input type="submit" class="btn btn-primary" value="Book Now" name="habb_booking">
     
</form>
      </div>
      <div class="modal-footer">
<h5 class="modal-title" id="four_wheelers">Book Two Wheelers For Me</h5>
      </div>
    </div>
  </div>
</div>


	<div class="row mt-5">
		<div class="col-sm-12">
			<p class="text-center text-primary">All Right Reserved By TEAM HABB.Copyright &copy; <?php echo date("Y"); ?></p>
		</div>
	</div>


	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>
<?php
	define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}


	include 'db.php';
	
	$name=$_POST['name'];
	$email=$_POST['email'];
	$mobile=$_POST['mobile'];
	$password=$_POST['password'];
	/*$conf_password=$_POST['conf_password'];*/
	$occupation=$_POST['occupation'];  
	$gender=$_POST['gender'];
	$aadhar_id=$_POST['aadhar_id'];
	$address=$_POST['address'];
	$state=$_POST['state'];
	

	if ($name==""||$email==""||$mobile==""||$password==""||$occupation==""||$gender==""||
		$aadhar_id==""||$address==""||$state=="") {
		echo "Fill All the Fields";
	}
	else{

	

		$duplicate="SELECT * FROM `register` WHERE `email`='$email'";
		$isDup=mysqli_query($con,$duplicate);
		$rowcountDup=mysqli_num_rows($isDup);
		if ($rowcountDup>0) {
			$msg=$email." is already registerd.";
			echo $msg;
		}
		 else {
		 	$status="not_verified";
			$query="INSERT INTO `register`( `name`, `email`, `mobile`, `password`,  `occupation`, `address`, `gender`, `aadhar_id`, `state`, `verification_status`)
			 		VALUES ('$name','$email','$mobile','$password','$occupation','$address','$gender','$aadhar_id','$state','$status')";
			$result=mysqli_query($con,$query);
			
			if ($result) {
				echo "Successfully Registered";
			} else {
				echo "Something went wrong";
			}
			
		}
	}
	

?>
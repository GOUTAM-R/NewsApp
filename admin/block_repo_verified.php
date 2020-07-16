<?php

define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}

	include 'db.php';
	$update="DELETE FROM `register` WHERE reporter_id='".$_POST['repo_id']."' ";
	$update_query=mysqli_query($con,$update);

	$query="SELECT `reporter_id`, `name`, `email`, `mobile`, `password`, `conf_password`, `occupation`, `address`, `gender`, `aadhar_id`, `state`, `verification_status` FROM `register` WHERE verification_status ='verified'";
	$result=mysqli_query($con,$query);
	$json_data=array();
	while($row=mysqli_fetch_assoc($result)){
		$json_data[]=$row;
	}
	
	echo json_encode($json_data);
?>
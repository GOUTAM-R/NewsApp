<?php
	define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}


	include 'conn.php';
	
	$nid=$_POST['nid'];


			$query="UPDATE `public_news_police` SET `status`='useful' WHERE `nid`='$nid'";
			$result=mysqli_query($con,$query);
			
			if ($result) {
				echo "Sucessfully Updated";
			} else {
				echo "Something went wrong";
			}

	

?>
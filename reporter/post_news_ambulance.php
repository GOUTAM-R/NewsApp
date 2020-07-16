<?php
	define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}


	include 'conn.php';
	
	$title=$_POST['title'];
	$description=$_POST['description'];
	//$category=$_POST['category'];
	$location=$_POST['location'];
	 
	$image=$_POST['image'];
	$video=$_POST['video'];
	
	$id=$_POST['id'];
	

	if ($title==""||$description==""||$location=="") {
		echo "Fill the Required Fields";
	}
	else{

	
		 	$status="not_serviced";
			$query="INSERT INTO `public_news_ambulancee`(`id`, `title`, `description`, `location`, `image`, `video`, `status`) VALUES ('$id','$title','$description','$location','$image','$video','$status')";
			$result=mysqli_query($con,$query);
			
			if ($result) {
				echo "Will do the need";
			} else {
				echo "Something went wrong";
			}
			
		
	}
	

?>
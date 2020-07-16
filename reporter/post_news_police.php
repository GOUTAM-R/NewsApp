<?php
	define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}


	include 'conn.php';
	
	$title=$_POST['title'];
	$description=$_POST['description'];

	$location=$_POST['location'];  
	$image=$_POST['image'];
	$video=$_POST['video'];
	
	$id=$_POST['id'];
	

	if ($title==""||$description=="") {
		echo "Fill the Required Fields";
	}
	else{
			$status="none";
			$query="INSERT INTO `public_news_police`(`id`, `title`, `description`, `location`, `image`, `video`, `status`) VALUES ('$id','$title','$description','$location','$image','$video','$status')";
			$result=mysqli_query($con,$query);
			
			if ($result) {
				echo "Successfully Posted";
			} else {
				echo "Something went wrong";
			}
			
		
	}
	

?>
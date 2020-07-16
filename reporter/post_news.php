<?php
	define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}


	include 'conn.php';
	
	$title=$_POST['title'];
	$description=$_POST['description'];
	$category=$_POST['category'];
	$city=$_POST['city'];
	$street=$_POST['street'];  
	$image=$_POST['image'];
	$video=$_POST['video'];
	$document=$_POST['document'];
	$id=$_POST['id'];
	

	if ($title==""||$description==""||$category==""||$city=="") {
		echo "Fill the Required Fields";
	}
	else{

	
		 	$status="not_verified";
			$query="INSERT INTO `public_news`(`id`, `title`, `description`, `category`, `city`, `street`, `image`, `video`, `document`, `status`) VALUES ('$id','$title','$description','$category','$city','$street','$image','$video','$document','$status')";
			$result=mysqli_query($con,$query);
			
			if ($result) {
				echo "Will be posted after it is verified";
			} else {
				echo "Something went wrong";
			}
			
		
	}
	

?>
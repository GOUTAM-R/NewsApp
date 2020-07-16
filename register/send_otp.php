<?php

define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}

	

	$otp=$_POST['otp_generated'];

	$mobile=$_POST['mobile'];
	

	$msg="Your OTP is ".$otp.".";
	
	$description= urlencode($msg);
	// create a new cURL resource
	$ch = curl_init();

	// set URL and other appropriate options
	curl_setopt($ch, CURLOPT_URL, "http://198.24.149.4/API/pushsms.aspx?loginID=nagamahesh&password=infidata@86&mobile=".$mobile."&text=".$description."&senderid=DEMOOO&route_id=2&Unicode=0");
	curl_setopt($ch, CURLOPT_HEADER, 0);

	// grab URL and pass it to the browser
	$sent=curl_exec($ch);
	if ($sent) {
		echo "OTP Successufully Sent ";
	}else{
		echo "error";
	}

	// close cURL resource, and free up system resources
	curl_close($ch);
?>
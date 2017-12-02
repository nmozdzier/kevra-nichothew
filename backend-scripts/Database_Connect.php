<?php
function dbConnect($servername, $username, $password){
	$connection = new mysqli($servername, $username, $password);
	if ($connection->connect_error){
		die("Connection failed: ".$connection->connect_error);
	}
	echo "Connected to database";
}
?>

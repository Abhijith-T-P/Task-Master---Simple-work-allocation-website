<?php
	$server="localhost";
	$username="root";
	$password="";
	$db="allocation";
	$con=mysqli_connect($server,$username,$password,$db);
	if(!$con)
	{
		echo"Error connecting";
	}
   
?>
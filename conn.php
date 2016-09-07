<?php
$server = "localhost";
$user = "root";
$database = "pharmclient";

$connect = mysqli_connect($server,$user,'');
if(!$connect){
	die("Error connecting to server");
	exit;
}

$db = mysqli_select_db($connect,$database);

if(!$db){
	die("Error accessing database");
	exit;
}
?>
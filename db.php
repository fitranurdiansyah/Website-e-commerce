<?php 
	$hostname = 'localhost';
	$username = 'root';
	$password = '';
	$dbname   = 'database';

	$conn = mysqli_connect($hostname, $username, $password, $dbname) or die ('Gagal terhubung ke database');
?>
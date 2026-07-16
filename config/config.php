<?php

$DBServer = 'localhost';
$DBUser = 'root';
$DBPass = '';
$DBName = 'kvskillshub';


$conn = mysqli_connect($DBServer, $DBUser, $DBPass, $DBName) or die("Connection failed: " . mysqli_connect_error());

?>
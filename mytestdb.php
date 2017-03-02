#!/usr/bin/php
<?php

$db = new mysqli ("localhost","root","support$01","DigitalEvidenceSystem");
// this is a C++ comment 
/* this a C comment */
# this is a shell style commment 
if ($db->connect_errno != 0)

{
		echo "error connecting to databases".$db->connect_error.PHP_EOL;
		exit();
}

echo "successfully connected!".PHP_EOL;
$query = "select * from VehicleAccident;";
$db->query($query);

$db->close();

echo "program complete".PHP_EOL;
?>

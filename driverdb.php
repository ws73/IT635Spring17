#!/usr/bin/php
<?php

require_once("driverDB.inc");

echo "executing script: ".$argv[0].PHP_EOL;
$driverName = $argv[1];
$driverId = $argv[2];
$driverAddress = $argv[3];
$driverYear = $argv[4];

$driverDB = new driverAccess("DigitalEvidenceSystem");

$driverDB->adddriverRecord(
	$driverName,
	$driverId,
	$driverAddress,
	$driverYear
);

$drivers = $driverDB->getdriverRecords();

echo "student records in db are:".PHP_EOL;
print_r($drivers);
echo $argv[0]." complete".PHP_EOL;
?>

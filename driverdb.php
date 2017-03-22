#!/usr/bin/php
<?php

require_once("driverDB.inc");

echo "executing script: ".$argv[0].PHP_EOL;
$driverID = $argv[1];
$driverName = $argv[2];
$driverVeh = $argv[3];
$driverAcc = $argv[4];
$driverAddress=$argv[5];
$driverdate= $argv[6];
$driverreport=$argv[7];
$driverstatus=$argv[8];

$driverDB = new driverAccess("DigitalEvidenceSystem");

$driverDB->adddriverRecord(
	$driverID,
	$driverName,
	$driverVeh,
	$driverAcc,
        $driverAddress,
        $driverdate,
        $driverreport,
        $driverstatus
);

$drivers = $driverDB->getdriverRecords();

echo "driver records in db are:".PHP_EOL;
print_r($drivers);
echo $argv[0]." driver report complete".PHP_EOL;
?>

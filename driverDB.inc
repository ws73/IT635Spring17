<?php

class driverAccess
{
private $db;

public function __construct($database)
{
	$this->db = new mysqli("localhost","root","support$01",$database);
	if ($this->db->connect_errno != 0)
	{
		echo "error connecting to databse: ".$this->db->connect_error.PHP_EOL;
		exit();
	}
}

public function __destruct()
{
	if (isset($this->db))
	{
		$this->db->close();
	}
}

public function getdriverRecords()
{
	$query = "select * from VehicleAccident;";

	$queryResponse = $this->db->query($query);
	$response = array();
	while($row = $queryResponse->fetch_assoc())
	{
		$response[] = $row;
	}
	return $response;
}

public function adddriverRecord($driverName,$driverid,$driveraddress,$driveryear)
{
	$sn = $this->db->real_escape_string($driverName);
	$id = $this->db->real_escape_string($driverid);
	$address = $this->db->real_escape_string($driveraddress);
	$year = $this->db->real_escape_string($driveryear);
	echo "before escape:\n$driveryear\n";
	echo "after escape:\n$year\n";
	$query = "insert into VehicleAccident(driver,case_ID,address,year) VALUES ('$sn','$id','$address',$year);";

	echo "executing SQL statement:\n".$query."\n";
	if (!$this->db->query($query))
	{
		echo "failed to insert record for $driverName".PHP_EOL;
	}
}
}

?>


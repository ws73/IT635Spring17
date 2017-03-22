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

public function adddriverRecord($driverID,$driverName,$driverVeh,$driverAcc,$driverAddress,$driverdate,$driverreport,$driverstatus)
{
	$ID = $this->db->real_escape_string($driverID);
	$dn = $this->db->real_escape_string($driverName);
	$dv = $this->db->real_escape_string($driverVeh);
	$dacc = $this->db->real_escape_string($driverAcc);
        $ddate = $this->db->real_escape_string($driverdate);
        $dreport = $this->db->real_escape_string($driverreport);
        $dstatus = $this->db->real_escape_string($driverstatus);

	echo "before escape:\n$driverstatus\n";
	echo "after escape:\n$driverName\n";
	$query = "insert into VehicleAccident(ID,driver,accident,address,date,report,status) VALUES ('$ID','$dn','$dv','$dacc','$ddate','$dreport','$dstatus');";

	echo "executing SQL statement:\n".$query."\n";
	if (!$this->db->query($query))
	{
		echo "failed to insert record for $driverName".PHP_EOL;
	}
}
}

?>


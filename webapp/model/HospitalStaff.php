<?php

require_once('Person.php');

class HospitalStaff : Person {
	private $_job;	
	private $_sector;

	public function __construct($job, $sector) {
		$this->$_job = $job;
		$this->$_sector = $sector;
	}



	public function setJob($job) {
		$this->$_job = $job;
	}

	public function getJob() {
		return $this->$_job;
	}



	public function setSector($sector) {
		$this->$_sector = $sector;
	}

	public function getSector() {
		return $this->$_sector;
	}


} 

?>
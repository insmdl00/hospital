<?php

require_once('Person.php');

class HospitalStaff : Person {
	private $_job;	
	private $_sector;

	public function __construct($id, $email, $password, $lastName, $firstName, $birthdate, $city, $cityCode, $phone, $job, $sector) {
		$this->$_id = $id;
		$this->$_email = $email;
		$this->$_password = $password;
		$this->$_lastName = $lastName;
		$this->$_firstName = $firstName;
		$this->$_birthdate = $birthdate;
		$this->$_city = $city;
		$this->$_cityCode = $cityCode;
		$this->$_phone = $phone;
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

<?php

class Person {
	protected $_id;	
	protected $_email;
	protected $_password;
	protected $_lastName;
	protected $_firstName;
	protected $_birthdate;
	protected $_city;
	protected $_cityCode;
	protected $_phone;

	public function __construct($id, $email, $password, $lastName, $firstName, $birthdate, $city, $cityCode, $phone) {
		$this->$_id = $id;
		$this->$_email = $email;
		$this->$_password = $password;
		$this->$_lastName = $lastName;
		$this->$_firstName = $firstName;
		$this->$_birthdate = $birthdate;
		$this->$_city = $city;
		$this->$_cityCode = $cityCode;
		$this->$_phone = $phone;		
	}



	public function setId($id) {
		$this->$_id = $id;
	}

	public function getId() {
		return $this->$_id;
	}



	public function setEmail($email) {
		$this->$_email = $email;
	}

	public function getEmail() {
		return $this->$_email;
	}



	public function setPassword($password) {
		$this->$_password = $password;
	}

	public function getPassword() {
		return $this->$_password;
	}



	public function setLastName($lastName) {
		$this->$_lastName = $lastName;
	}

	public function getLastName() {
		return $this->$_lastName;
	}



	public function setFirstName($firstName) {
		$this->$_firstName = $firstName;
	}

	public function getFirstName() {
		return $this->$_firstName;
	}



	public function setBirthdate($birthdate) {
		$this->$_birthdate = $birthdate;
	}

	public function getBirthdate() {
		return $this->$_birthdate;
	}



	public function setCity($city) {
		$this->$_city = $city;
	}

	public function getCity() {
		return $this->$_city;
	}



	public function setCityCode($cityCode) {
		$this->$_cityCode = $cityCode;
	}

	public function getCityCode() {
		return $this->$_cityCode;
	}



	public function setPhone($phone) {
		$this->$_phone = $phone;
	}	

	public function getPhone() {
		return $this->$_phone;
	}


} 

?>
<?php

require_once('Person.php');

class Administration : Person {

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


} 

?>

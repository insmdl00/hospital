<?php

require_once('Person.php');

class Patient : Person {
	private $_size;	
	private $_weight;
	private $_bloodGroup;
	private $_swNum;
	private $_socialWelfare;
	private $_room;

	public function __construct($id, $email, $password, $lastName, $firstName, $birthdate, $city, $cityCode, $phone, $size, $weight, $bloodGroup, $swNum, $socialWelfare, $room) {
		$this->$_size = $size;
		$this->$_weight = $weight;
		$this->$_bloodGroup = $bloodGroup;
		$this->$_swNum = $swNum;
		$this->$_socialWelfare = $socialWelfare;
		$this->$_room = $room;	
	}



	public function setSize($size) {
		$this->$_size = $size;
	}

	public function getSize() {
		return $this->$_size;
	}



	public function setWeight($weight) {
		$this->$_weight = $weight;
	}

	public function getWeight() {
		return $this->$_weight;
	}



	public function setBloodGroup($bloodGroup) {
		$this->$_bloodGroup = $bloodGroup;
	}

	public function getBloodGroup() {
		return $this->$_bloodGroup;
	}



	public function setSwNum($swNum) {
		$this->$_swNum = $swNum;
	}

	public function getSwNum() {
		return $this->$_swNum;
	}



	public function setSocialWelfare($socialWelfare) {
		$this->$_socialWelfare = $socialWelfare;
	}

	public function getSocialWelfare() {
		return $this->$_socialWelfare;
	}



	public function setRoom($room) {
		$this->$_room = $room;
	}

	public function getRoom() {
		return $this->$_room;
	}


} 

?>

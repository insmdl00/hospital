<?php

class Room {
	private $_num;	
	private $_sector;
	private $_type;
	private $_placesNum;

	public function __construct($num, $sector, $type, $placesNum) {
		$this->$_num = $num;
		$this->$_sector = $sector;
		$this->$_type = $type;
		$this->$_placesNum = $placesNum;	
	}



	public function setNum($num) {
		$this->$_num = $num;
	}

	public function getNum() {
		return $this->$_num;
	}



	public function setSector($sector) {
		$this->$_sector = $sector;
	}

	public function getSector() {
		return $this->$_sector;
	}



	public function setType($type) {
		$this->$_type = $type;
	}

	public function getType() {
		return $this->$_type;
	}



	public function setPlacesNum($placesNum) {
		$this->$_placesNum = $placesNum;
	}

	public function getPlacesNum() {
		return $this->$_placesNum;
	}


} 

?>
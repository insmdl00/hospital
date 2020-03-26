<?php

class Sector {
	private $_id;	
	private $_name;

	public function __construct($id, $name) {
		$this->$_id = $id;
		$this->$_name = $name;	
	}



	public function setId($id) {
		$this->$_id = $id;
	}

	public function getId() {
		return $this->$_id;
	}



	public function setName($name) {
		$this->$_name = $name;
	}

	public function getName() {
		return $this->$_name;
	}


} 

?>
<?php

class SocialWelfare {
	private $_id;	
	private $_name;
	private $_refundPercentage;

	public function __construct($id, $name, $refundPercentage) {
		$this->$_id = $id;
		$this->$_name = $name;
		$this->$_refundPercentage = $refundPercentage;
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



	public function setRefundPercentage($refundPercentage) {
		$this->$_refundPercentage = $refundPercentage;
	}

	public function getRefundPercentage() {
		return $this->$_refundPercentage;
	}


} 

?>
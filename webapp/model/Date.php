<?php

class Date {
	private $_day;	
	private $_month;
	private $_year;

	public function __construct($day, $month, $year) {
		$this->$_day = $day;
		$this->$_month = $month;
		$this->$_year = $year;		
	}



	public function setDay($day) {
		$this->$_day = $day;
	}

	public function getDay() {
		return $this->$_day;
	}



	public function setMonth($month) {
		$this->$_month = $month;
	}

	public function getMonth() {
		return $this->$_month;
	}



	public function setYear($year) {
		$this->$_year = $year;
	}

	public function getYear() {
		return $this->$_year;
	}


} 

?>
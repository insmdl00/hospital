<?php 


function connectToDb() {
	try {
    	$db = new PDO('mysql:host=localhost; dbname=e-mergency', 'root', '');
  	}
  	catch(exception $e) {
    	die('Error '.$e->getMessage());
  	}

  	return db;
}
 
?>
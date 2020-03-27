<?php 

require_once('database_connection.php');
require_once('./model/Patient.php');
require_once('./model/Administration.php');
require_once('./model/HospitalStaff.php');

$email = $_POST['email'];
$password = $_POST['password'];

$emailArray = explode("@", $email);

if($emailArray[1] == "e-mergencies.com") {
	$table = "patient";
	$dbEmail = "pEmail";
	$dbPassword = "pPassword";
}
else if($emailArray[1] == "staff.e-mergencies.com") {
	$table = "hospital_staff";
	$dbEmail = "hsEmail";
	$dbPassword = "hsPassword";
}
else if($emailArray[1] == "admin.e-mergencies.com") {
	$table = "administration";
	$dbEmail = "aEmail";
	$dbPassword = "aPassword";
}
else {
	//error
}

$db = connectToDb()->query('SELECT * FROM '.$table.' WHERE '.$dbEmail.' LIKE '.$email.' AND '.$dbPassword.' LIKE '.$password);
$response = $db->rowCount();

if($response == 1 && $emailArray[1] == "e-mergencies.com") {
	while($data = $db->fetch()) {
		$_SESSION['user'] = new Patient($data['pId'], $data['pEmail'], $data['pPassword'], $data['pLastName'], $data['pFirstName'], $data['pBirthdate'], $data['pCity'], $data['pCityCode'], $data['pPhone'], $data['pGender'], $data['pSize'], $data['pWeight'], $data['pBloodGroup'], $data['pSWNum'], $data['pSocialWelfare'], $data['pRoom']);
	}

	header('');
}
else if($response == 1 && $emailArray[1] == "staff.e-mergencies.com") {
	while($data = $db->fetch()) {
		$_SESSION['user'] = new HospitalStaff($data['hsId'], $data['hsEmail'], $data['hsPassword'], $data['hsLastName'], $data['hsFirstName'], $data['hsBirthdate'], $data['hsCity'], $data['hsCityCode'], $data['hsPhone'], $data['hsGender'], $data['hsJob'], $data['hsSector']);
	}

	header('');
}
else if($response == 1 && $emailArray[1] == "admin.e-mergencies.com") {
	while($data = $db->fetch()) {
		$_SESSION['user'] = new Administration($data['aId'], $data['aEmail'], $data['aPassword'], $data['aLastName'], $data['aFirstName'], $data['aBirthdate'], $data['aCity'], $data['aCityCode'], $data['aPhone'], $data['aGender']);
	}

	header('');
}
else {
	//error
}
 
?>
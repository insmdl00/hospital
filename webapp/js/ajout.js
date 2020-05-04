function ajoutPatient(){
	window.location.href = "http://localhost/projet\ Emergencies/treatment/ajoutPatient.php";//chemin vers la page d'ajout de patient
}
function ajoutStaff(){
	window.location.href = "http://localhost/projet\ Emergencies/treatment/ajoutStaff.php";//chemin vers la page d'ajout de patient
}
function ajoutAdmin(){
	window.location.href = "http://localhost/projet\ Emergencies/treatment/ajoutAdmin.php";//chemin vers la page d'ajout de patient
}


function verif(){//vérification du mot de passe identique 
	var mdp=document.getElementById("mdp").value;
	var rmdp=document.getElementById("rmdp").value;
	if(mdp != rmdp){
		document.getElementById("rmdp").focus();
		alert("Veuillez un mot de passe identique");	
		document.getElementById("rmdp").value="";
	}
}


<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="refresh" content="20; URL=../index.php" /><!-- retour vers la page indiqué dans url au bout de x secondes dans content-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="../css/ajout.css">
	<title>Confirmation d'ajout</title>
</head>
<body>
	<div>
		<p><img class="image" src="https://raw.githubusercontent.com/insmdl00/hospital/master/webapp/img/logo.jpg" alt="logo E-mergencies" title="logo E-mergencies"></p>
		<label class="ajt">Un nouvel patient a été ajouté !</label>
	</div>

	<?php
	session_start();
	/*     Génère un mot de passe aléatoire     */
	function Genere_Password($size)
	{
	    // Initialisation des caractères utilisables
	    $characters = array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z");
	    $password = "";

	    for($i=0;$i<$size;$i++)
	    {
	        $password .= ($i%2) ? strtoupper($characters[array_rand($characters)]) : $characters[array_rand($characters)];
	    }
		
    	return $password;
	}


	//connexion à la base
	$bd = new PDO('mysql:host=localhost;dbname=bdm;charset=utf8' , 'root', '');
	//gestion des erreurs de connexion
	if($bd === false){
    	die("ERREUR : Impossible de se connecter.");
	}else{
		//création mot de passe 
		$motDePasse = Genere_Password(20);
		//préparation de la requète pour ajouter les données à la base de données
		$req = $bd->prepare('INSERT INTO patients(nom,prenom,email,dateNaissance,secuSociale,rue,codePostal,ville,pays,numTelephone,motDePasse,firstConnexion) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)');
		//execution de la requete
		$req->execute(array($_POST['nom'],$_POST['prenom'], $_POST['email'], $_POST['dateNaissance'], $_POST['secuSociale'], $_POST['rue'], $_POST['codePostal'], $_POST['ville'], $_POST['pays'], $_POST['numTelephone'], $motDePasse, true));
		?>
		<br>
		<br>
		<label class="ajt">Adresse mail : </label>
		<br>
		<?php 
		echo $_POST['email'];
		?>
		<br>
		<br>
		<label class="ajt">Mot de passe provisoire : </label>
		<br>
		<?php
		echo $motDePasse;
	}
?>
</body>
</html>
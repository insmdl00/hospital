<html>

<head>
  <link rel="stylesheet" type="text/css" href="../css/ajout.css">
  <title>Ajout membre de l'administration</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
</head>

<body>
  <p>
    <a href="../index.php"><!-- retour vers l'accueil -->
      <img class="image" src="https://raw.githubusercontent.com/insmdl00/hospital/master/webapp/img/logo.jpg" alt="logo E-mergencies" title="Retour vers l'accueil">
    </a>
  </p>
  
  <br>
  <h1 align="center">Ajouter un nouveau membre de l'administration</h1>
  <div class="main">
   
    <form class="f1" method="POST" action="./ajoutAdminBD.php">
      <table>
        <tr>
          <td>
            <h2>Obligatoire : </h2>
            <input type="text" class="un" name="prenom" align="center" placeholder="Prénom" required>
            <input type="text" class="un" name="nom" align="center" placeholder="Nom" required>
            <input type="email" class="un" name="email" align="center" placeholder="Email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
            <input type="text" class="un" name="dateNaissance" align="center" placeholder="jj/mm/aaaa" required pattern="(0[1-9]|[12][0-9]|3[01])[\/](0[1-9]|1[012])[\/](19|20)\d\d">
            <input type="text" class="un" name="secuSociale" align="center" placeholder="N° sécurité sociale" required pattern="[12][ \.\-]?[0-9]{2}[ \.\-]?(0[1-9]|[1][0-2])[ \.\-]?([0-9]{2}|2A|2B)[ \.\-]?[0-9]{3}[ \.\-]?[0-9]{3}[ \.\-]?[0-9]{2}"><!-- au format : 1 85 11 18 148 410 26 -->
          </td>
          <td>
            <h2>Optionnel :</h2>
            <input type="text" class="un" name="rue" align="center" placeholder="Adresse">
            <input type="text" class="un" name="codePostal" align="center" placeholder="Code postal" pattern="[0-9]{5}"><!--au format : 31 100 ou 31100 -->
            <input type="text" class="un" name="ville" align="center" placeholder="Ville">
            <input type="text" class="un" name="pays" align="center" placeholder="Pays">
            <input type="text" class="un" name="numTelephone" align="center" placeholder="N° téléphone" pattern="(01|02|03|04|05|06|07|08|09)[ \ \-]?[0-9]{2}[ \.\-]?[0-9]{2}[ \.\-]?[0-9]{2}[ \.\-]?[0-9]{2}"><!-- au format :04 00 00 00 00 ou 0400000000 -->
          </td>
        </tr>        
      </table>
      <br>
      <br>

      <input type="submit" class="submit" name="Ajouter" value="Ajouter">
      <br>
      <br>           
    </div>
     
</body>

</html>
<?php
	session_start();
?>

<!DOCTYPE HTML5>

<html>


	<head>
		<title>Sign in</title>

		<meta charset="utf-8">

		<link rel="stylesheet" href="css/sign_in.css">
	</head>


	<header>

	</header>


	<body class="background">
		<div class="form">
			<center>
				<h1>e-mergencies</h1>
				<img src="img/logo.jpg">

				<form method="post" target="treatment/sign_in.php">
					<br><br><label>Email :</label><br>
					<input type="email" name="email"><br><br>
					<label>Password :</label><br>
					<input type="password" name="password"><br><br>
					<input type="submit" value="Sign in">
				</form>
			</center>
		</div>
	</body>


	<footer>

	</footer>


</html>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Authentification</title>
	</head>
	<body>
		<p align = "center"><c:out value="Formulaire d'Authentification" /></p> 
		<div class="col-lg-3">
						<div class="footer_title">Newsletter</div>
						<div class="newsletter_container">
							<form action="#" class="newsletter_form" id="newsletter_form">
								<input type="email" class="newsletter_input" placeholder="Your email address" required="required">
								<button class="newsletter_button">Subscribe</button>
							</form>
						</div>
		</div>
		<form  method="post">
			<table align = "center">
				<tr>
			 		<td><label for="nom">Login: </label></td>
             		<td><input type="text" name="nom" id="nom" placeholder="Entrez nom d'utilisateur" required="required"></td>
             	</tr>
             	<tr></tr>
            	<tr>
            		<td> <label for="password">Mot de Passe: </label></td>
	    			<td><input type="password" name="passwd" placeholder="Mot de passe" required="required"></td>
	    		</tr>
	    		<tr></tr>
	    		<tr>
	    			<td></td>
					<td><input type="submit" value="Connexion" />
					<input type="reset" value="Reset" /></td>
				</tr>
	    	</table>
		</form>
	</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Inscription</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The River template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.3.4/animate.css">
<link href="plugins/jquery-datepicker/jquery-ui.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/contact.css">
<link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">
</head>
<body>

<div class="super_container">
	
	<%@include file ="head.jsp" %>>

	<!-- Menu -->
	<div class="menu trans_400 d-flex flex-column align-items-end justify-content-start">
		<div class="menu_close"><i class="fa fa-times" aria-hidden="true"></i></div>
		<div class="menu_content">
			<nav class="menu_nav text-right">
				<ul>
					<li><a href="index">Home</a></li>
					<li><a href="about">About us</a></li>
					<li><a href="#">Rooms</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="recherche">Vols disponibles</a></li>
				</ul>
			</nav>
		</div>
		<div class="menu_extra">
			<div class="menu_phone d-flex flex-row align-items-center justify-content-center">
				<img src="images/phone-2.png" alt="">
				<span>0183-12345678</span>
			</div>
		</div>
	</div>

	<!-- Home -->

	<div class="home">
		<div class="background_image" style="background-image:url(images/vol4.jpg)"></div>
		<div class="home_container">
			<div class="container">
				<c:if test="${!empty message }">
					<c:out value="${message }"></c:out>
				</c:if>
				<form  method ="post">
					<div class="form-row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Nom</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="nom" placeholder="Entrez votre nom" required="required">
						</div>
					</div>
					<div class="form-row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Prenoms</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"  name="prenom" placeholder="Entrez vos prenoms" required="required">
						</div>
					</div>
					<div class="form-row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Ville</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="ville" placeholder="ville actuelle" required="required">
						</div>
					</div>
					<div class="form-row align-items-center">
						<div class="col-auto my-1">
							<label class="mr-sm-2" for="inlineFormCustomSelect">Pays</label>
							<select class="custom-select mr-sm-2" name="pays">
								<option value="France" selected="selected">Benin </option>
								<option value="Afghanistan">Afghanistan </option>
								<option value="Afrique_Centrale">Afrique_Centrale </option>
								<option value="Afrique_du_sud">Afrique_du_Sud </option> 
								<option value="Albanie">Albanie </option>
								<option value="Algerie">Algerie </option>
								<option value="Allemagne">Allemagne </option>
								<option value="Andorre">Andorre </option>
								<option value="Angola">Angola </option>
								<option value="Anguilla">Anguilla </option>
								<option value="Arabie_Saoudite">Arabie_Saoudite </option>
								<option value="Argentine">Argentine </option>
								<option value="Armenie">Armenie </option> 
								<option value="Australie">Australie </option>
								<option value="Autriche">Autriche </option>
								<option value="Azerbaidjan">Azerbaidjan </option>
											
								<option value="Bahamas">Bahamas </option>
								<option value="Bangladesh">Bangladesh </option>
								<option value="Barbade">Barbade </option>
								<option value="Bahrein">Bahrein </option>
								<option value="Belgique">Belgique </option>
								<option value="Belize">Belize </option>
								<option value="Benin">Benin </option>
								<option value="Bermudes">Bermudes </option>
								<option value="Bielorussie">Bielorussie </option>
								<option value="Bolivie">Bolivie </option>
								<option value="Botswana">Botswana </option>
								<option value="Bhoutan">Bhoutan </option>
								<option value="Boznie_Herzegovine">Boznie_Herzegovine </option>
								<option value="Bresil">Bresil </option>
								<option value="Brunei">Brunei </option>
								<option value="Bulgarie">Bulgarie </option>
								<option value="Burkina_Faso">Burkina_Faso </option>
								<option value="Burundi">Burundi </option>
											
								<option value="Caiman">Caiman </option>
								<option value="Cambodge">Cambodge </option>
											<option value="Cameroun">Cameroun </option>
											<option value="Canada">Canada </option>
											<option value="Canaries">Canaries </option>
											<option value="Cap_vert">Cap_Vert </option>
											<option value="Chili">Chili </option>
											<option value="Chine">Chine </option> 
											<option value="Chypre">Chypre </option> 
											<option value="Colombie">Colombie </option>
											<option value="Comores">Colombie </option>
											<option value="Congo">Congo </option>
											<option value="Congo_democratique">Congo_democratique </option>
											<option value="Cook">Cook </option>
											<option value="Coree_du_Nord">Coree_du_Nord </option>
											<option value="Coree_du_Sud">Coree_du_Sud </option>
											<option value="Costa_Rica">Costa_Rica </option>
											<option value="Cote_d_Ivoire">Côte_d_Ivoire </option>
											<option value="Croatie">Croatie </option>
											<option value="Cuba">Cuba </option>
											
											<option value="Danemark">Danemark </option>
											<option value="Djibouti">Djibouti </option>
											<option value="Dominique">Dominique </option>
											
											<option value="Egypte">Egypte </option> 
											<option value="Emirats_Arabes_Unis">Emirats_Arabes_Unis </option>
											<option value="Equateur">Equateur </option>
											<option value="Erythree">Erythree </option>
											<option value="Espagne">Espagne </option>
											<option value="Estonie">Estonie </option>
											<option value="Etats_Unis">Etats_Unis </option>
											<option value="Ethiopie">Ethiopie </option>
											
											<option value="Falkland">Falkland </option>
											<option value="Feroe">Feroe </option>
											<option value="Fidji">Fidji </option>
											<option value="Finlande">Finlande </option>
											<option value="France">France </option>
											
											<option value="Gabon">Gabon </option>
											<option value="Gambie">Gambie </option>
											<option value="Georgie">Georgie </option>
											<option value="Ghana">Ghana </option>
											<option value="Gibraltar">Gibraltar </option>
											<option value="Grece">Grece </option>
											<option value="Grenade">Grenade </option>
											<option value="Groenland">Groenland </option>
											<option value="Guadeloupe">Guadeloupe </option>
											<option value="Guam">Guam </option>
											<option value="Guatemala">Guatemala</option>
											<option value="Guernesey">Guernesey </option>
											<option value="Guinee">Guinee </option>
											<option value="Guinee_Bissau">Guinee_Bissau </option>
											<option value="Guinee equatoriale">Guinee_Equatoriale </option>
											<option value="Guyana">Guyana </option>
											<option value="Guyane_Francaise ">Guyane_Francaise </option>
											
											<option value="Haiti">Haiti </option>
											<option value="Hawaii">Hawaii </option> 
											<option value="Honduras">Honduras </option>
											<option value="Hong_Kong">Hong_Kong </option>
											<option value="Hongrie">Hongrie </option>
											
											<option value="Inde">Inde </option>
											<option value="Indonesie">Indonesie </option>
											<option value="Iran">Iran </option>
											<option value="Iraq">Iraq </option>
											<option value="Irlande">Irlande </option>
											<option value="Islande">Islande </option>
											<option value="Israel">Israel </option>
											<option value="Italie">italie </option>
											
											<option value="Jamaique">Jamaique </option>
											<option value="Jan Mayen">Jan Mayen </option>
											<option value="Japon">Japon </option>
											<option value="Jersey">Jersey </option>
											<option value="Jordanie">Jordanie </option>
											
											<option value="Kazakhstan">Kazakhstan </option>
											<option value="Kenya">Kenya </option>
											<option value="Kirghizstan">Kirghizistan </option>
											<option value="Kiribati">Kiribati </option>
											<option value="Koweit">Koweit </option>
											
											<option value="Laos">Laos </option>
											<option value="Lesotho">Lesotho </option>
											<option value="Lettonie">Lettonie </option>
											<option value="Liban">Liban </option>
											<option value="Liberia">Liberia </option>
											<option value="Liechtenstein">Liechtenstein </option>
											<option value="Lituanie">Lituanie </option> 
											<option value="Luxembourg">Luxembourg </option>
											<option value="Lybie">Lybie </option>
											
											<option value="Macao">Macao </option>
											<option value="Macedoine">Macedoine </option>
											<option value="Madagascar">Madagascar </option>
											<option value="Madère">Madère </option>
											<option value="Malaisie">Malaisie </option>
											<option value="Malawi">Malawi </option>
											<option value="Maldives">Maldives </option>
											<option value="Mali">Mali </option>
											<option value="Malte">Malte </option>
											<option value="Man">Man </option>
											<option value="Mariannes du Nord">Mariannes du Nord </option>
											<option value="Maroc">Maroc </option>
											<option value="Marshall">Marshall </option>
											<option value="Martinique">Martinique </option>
											<option value="Maurice">Maurice </option>
											<option value="Mauritanie">Mauritanie </option>
											<option value="Mayotte">Mayotte </option>
											<option value="Mexique">Mexique </option>
											<option value="Micronesie">Micronesie </option>
											<option value="Midway">Midway </option>
											<option value="Moldavie">Moldavie </option>
											<option value="Monaco">Monaco </option>
											<option value="Mongolie">Mongolie </option>
											<option value="Montserrat">Montserrat </option>
											<option value="Mozambique">Mozambique </option>
											
											<option value="Namibie">Namibie </option>
											<option value="Nauru">Nauru </option>
											<option value="Nepal">Nepal </option>
											<option value="Nicaragua">Nicaragua </option>
											<option value="Niger">Niger </option>
											<option value="Nigeria">Nigeria </option>
											<option value="Niue">Niue </option>
											<option value="Norfolk">Norfolk </option>
											<option value="Norvege">Norvege </option>
											<option value="Nouvelle_Caledonie">Nouvelle_Caledonie </option>
											<option value="Nouvelle_Zelande">Nouvelle_Zelande </option>
											
											<option value="Oman">Oman </option>
											<option value="Ouganda">Ouganda </option>
											<option value="Ouzbekistan">Ouzbekistan </option>
											
											<option value="Pakistan">Pakistan </option>
											<option value="Palau">Palau </option>
											<option value="Palestine">Palestine </option>
											<option value="Panama">Panama </option>
											<option value="Papouasie_Nouvelle_Guinee">Papouasie_Nouvelle_Guinee </option>
											<option value="Paraguay">Paraguay </option>
											<option value="Pays_Bas">Pays_Bas </option>
											<option value="Perou">Perou </option>
											<option value="Philippines">Philippines </option> 
											<option value="Pologne">Pologne </option>
											<option value="Polynesie">Polynesie </option>
											<option value="Porto_Rico">Porto_Rico </option>
											<option value="Portugal">Portugal </option>
											
											<option value="Qatar">Qatar </option>
											
											<option value="Republique_Dominicaine">Republique_Dominicaine </option>
											<option value="Republique_Tcheque">Republique_Tcheque </option>
											<option value="Reunion">Reunion </option>
											<option value="Roumanie">Roumanie </option>
											<option value="Royaume_Uni">Royaume_Uni </option>
											<option value="Russie">Russie </option>
											<option value="Rwanda">Rwanda </option>
											
											<option value="Sahara Occidental">Sahara Occidental </option>
											<option value="Sainte_Lucie">Sainte_Lucie </option>
											<option value="Saint_Marin">Saint_Marin </option>
											<option value="Salomon">Salomon </option>
											<option value="Salvador">Salvador </option>
											<option value="Samoa_Occidentales">Samoa_Occidentales</option>
											<option value="Samoa_Americaine">Samoa_Americaine </option>
											<option value="Sao_Tome_et_Principe">Sao_Tome_et_Principe </option> 
											<option value="Senegal">Senegal </option> 
											<option value="Seychelles">Seychelles </option>
											<option value="Sierra Leone">Sierra Leone </option>
											<option value="Singapour">Singapour </option>
											<option value="Slovaquie">Slovaquie </option>
											<option value="Slovenie">Slovenie</option>
											<option value="Somalie">Somalie </option>
											<option value="Soudan">Soudan </option> 
											<option value="Sri_Lanka">Sri_Lanka </option> 
											<option value="Suede">Suede </option>
											<option value="Suisse">Suisse </option>
											<option value="Surinam">Surinam </option>
											<option value="Swaziland">Swaziland </option>
											<option value="Syrie">Syrie </option>
											
											<option value="Tadjikistan">Tadjikistan </option>
											<option value="Taiwan">Taiwan </option>
											<option value="Tonga">Tonga </option>
											<option value="Tanzanie">Tanzanie </option>
											<option value="Tchad">Tchad </option>
											<option value="Thailande">Thailande </option>
											<option value="Tibet">Tibet </option>
											<option value="Timor_Oriental">Timor_Oriental </option>
											<option value="Togo">Togo </option> 
											<option value="Trinite_et_Tobago">Trinite_et_Tobago </option>
											<option value="Tristan da cunha">Tristan de cuncha </option>
											<option value="Tunisie">Tunisie </option>
											<option value="Turkmenistan">Turmenistan </option> 
											<option value="Turquie">Turquie </option>
											
											<option value="Ukraine">Ukraine </option>
											<option value="Uruguay">Uruguay </option>
											
											<option value="Vanuatu">Vanuatu </option>
											<option value="Vatican">Vatican </option>
											<option value="Venezuela">Venezuela </option>
											<option value="Vierges_Americaines">Vierges_Americaines </option>
											<option value="Vierges_Britanniques">Vierges_Britanniques </option>
											<option value="Vietnam">Vietnam </option>
											
											<option value="Wake">Wake </option>
											<option value="Wallis et Futuma">Wallis et Futuma </option>
											
											<option value="Yemen">Yemen </option>
											<option value="Yougoslavie">Yougoslavie </option>
											
											<option value="Zambie">Zambie </option>
											<option value="Zimbabwe">Zimbabwe </option>    	
							</select>
						</div>
					</div>
					<div class="form-row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Téléphone</label>
					    <div class="col-sm-10">
					    	<input type="text" class="form-control" name="tel" placeholder="votre contact">
					    </div>
					</div>
				    <div class="form-row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Login      </label>
						<div class="col-sm-10">
						  	<input type="text" class="form-control" name = "login" required="required" placeholder="username">
						</div>
					</div>
								    <div class="form-group row">
									    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
									    <div class="col-sm-10">
									    	<input type="password" class="form-control" name ="passwd" required="required" placeholder="Password">
									    </div>
									</div>
									 <div class="form-group row">
									    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
									    <div class="col-sm-10">
									    	<input type="password" class="form-control" name ="passwd1" required="required" placeholder="confirmer votre mot de passe">
									    </div>
									</div>
									<div class="form-group row">
								    	<div class="col-sm-10">
								      		<button type="submit" class="btn btn-primary">s'inscrire</button>
								    	</div>
								  	</div>
								</form>
							</div>
						</div>
	</div>
</div>
	<!-- Footer -->

	<footer class="footer">
		<div class="footer_content">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="footer_logo_container text-center">
							<div class="footer_logo">
								<a href="#"></a>
								<div>QKFLY</div>
								<div>since 1945</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row footer_row">
					
					<!-- Address -->
					<div class="col-lg-3">
						<div class="footer_title">Our Address</div>
						<div class="footer_list">
							<ul>
								<li>Beach Str. 345</li>
								<li>67559 Miami</li>
								<li>USA</li>
							</ul>
						</div>
					</div>

					<!-- Reservations -->
					<div class="col-lg-3">
						<div class="footer_title">Reservations</div>
						<div class="footer_list">
							<ul>
								<li>Tel: 345 5667 889</li>
								<li>Fax; 6783 4567 889</li>
								<li>reservations@hotelriver.com</li>
							</ul>
						</div>
					</div>

					<!-- Newsletter -->
					<div class="col-lg-3">
						<div class="footer_title">Newsletter</div>
						<div class="newsletter_container">
							<form action="#" class="newsletter_form" id="newsletter_form">
								<input type="email" class="newsletter_input" placeholder="Your email address" required="required">
								<button class="newsletter_button">Subscribe</button>
							</form>
						</div>
					</div>

					<!-- Footer images -->
					<div class="col-lg-3">
						<div class="certificates d-flex flex-row align-items-start justify-content-lg-between justify-content-start flex-lg-nowrap flex-wrap">
							<div class="cert"><img src="images/cert_1.png" alt=""></div>
							<div class="cert"><img src="images/cert_2.png" alt=""></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</div>
	</footer>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="styles/bootstrap-4.1.2/popper.js"></script>
<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.3.4/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/jquery-datepicker/jquery-ui.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="js/contact.js"></script>
</body>
</html>
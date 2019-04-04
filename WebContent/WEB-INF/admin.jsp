<!DOCTYPE html>
<html lang="en">
<head>
<title>Vols</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="The River template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file = "css.jsp" %>
</head>
<body>
<div class="super_container">
<!-- Header -->

	<header class="header">
		<div class="header_content d-flex flex-row align-items-center justify-content-start">
			<div class="logo"><a href="#">QkFLY</a></div>
			<div class="ml-auto d-flex flex-row align-items-center justify-content-start">
				<nav class="main_nav">
					<ul class="d-flex flex-row align-items-start justify-content-start">
						<li ><a href="index">Create</a></li>
						<li><a href="about">Read</a></li>
						<li><a href="inscription">Update</a></li>
						<li><a href="recherche">Delete</a></li>
						<c:choose>
							<c:when test="${!empty sessionScope }">
								<li><a href="deconnexion">Se deconnecter</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="authentification">Se connecter</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>
				<!-- Hamburger Menu -->
				<div class="hamburger"><i class="fa fa-bars" aria-hidden="true"></i></div>
			</div>
		</div>
	</header>
	<!-- Home -->

	<div class="home">
		<div class="background_image" style="background-image:url(images/vol4.jpg)"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content text-center">
							<div class="booking_form_container">
								<form method="post" class="booking_form" id="booking_form">
									<div class="d-flex flex-xl-row flex-column align-items-start justify-content-start">
										<div class="booking_input_container d-flex flex-row align-items-start justify-content-start flex-wrap">
											<div><input type="text" class="datepicker booking_input booking_input_a booking_out" placeholder="Date depart" name = "datedep" required="required"></div>
											<div><input type="text" class="booking_input booking_input_b" placeholder="Provenance" name = "provenance" required="required"></div>
											<div><input type="text" class="booking_input booking_input_b" placeholder="Destination" name = "destination" required="required"></div>
											<div><input type="text" class="booking_input booking_input_b" placeholder="Poids" name = "poids"></div>
										</div>
										<div><button class="booking_button trans_200">Rechercher</button></div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 30px">
		<c:choose>
			<c:when test="${!empty vols}">
				<div style="margin-down: 20px">
					Listes des vols disponibles
				</div>
				<table class="table table-bordered" style="color:black">
				<thead>
					<tr>
						<th>Numéro  </th>
						<th>Numvol  </th>
						<th>Compagnie</th>
						<th>Date Depart</th>
						<th>Plus d'informations</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ vols }" var="vol" varStatus="status">
						<tr>
							<td><c:out value="${status.count}"></c:out></td>
							<td><c:out value="${vol.id_vol}"></c:out></td>
							<td><c:out value="${vol.compagnie}"></c:out></td>
							<td><c:out value="${vol.datedep}"></c:out></td>
							<td><a href="inscription">Détails</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:when >
	</c:choose>
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

<%@include file = "js.jsp" %>
</body>
</html>
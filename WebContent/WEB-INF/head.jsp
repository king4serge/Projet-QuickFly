	<!-- Header -->

	<header class="header">
		<div class="header_content d-flex flex-row align-items-center justify-content-start">
			<div class="logo"><a href="#">QkFLY</a></div>
			<div class="ml-auto d-flex flex-row align-items-center justify-content-start">
				<nav class="main_nav">
					<ul class="d-flex flex-row align-items-start justify-content-start">
						<li ><a href="index">Home</a></li>
						<li><a href="about">About us</a></li>
						<c:choose>
							<c:when test="${!empty sessionScope }">
								<li><a href="deconnexion">Se deconnecter</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="authentification">Se connecter</a></li>
							</c:otherwise>
						</c:choose>
						<li><a href="inscription">S'inscrire</a></li>
						<li><a href="recherche">Vols disponibles</a></li>
					</ul>
				</nav>
				<!-- Hamburger Menu -->
				<div class="hamburger"><i class="fa fa-bars" aria-hidden="true"></i></div>
			</div>
		</div>
	</header>
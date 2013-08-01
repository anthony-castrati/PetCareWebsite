<!DOCTYPE html>
<html lang="en">

<head>
<title>Home - ${appconfig.siteName}</title>
<jsp:include page="header.jsp" />
</head>

<body>
	<jsp:include page="navigation.jsp" />

	<div class="container">

		<!-- Main hero unit for a primary marketing message or call to action -->
		<jsp:include page="carousel.jsp" />
		<!-- Example row of columns -->
		<div class="row">
			<div class="span4">
				<h2>Our Services</h2>
				<p>
					Capital City Pet Care provides service for dogs, cats, small animals and exotics.  We are proud to offer daily visits, dog walking, medication administration, nail trims and much more! For more information, please check out our <a href="services">services</a> page.
				</p>
			</div>
			<div class="span4">
				<h2>Free Consultation</h2>
				<p>
					Initial consultation is free! We will travel to your home to meet with you and your pet one on one to create a specialized care plan for you and your extended family. <a href="contact">Contact us</a> today!
				</p>
			</div>
			<div class="span4">
				<h2>Referral Program</h2>
				<p>Refer a friend or family member and receive a $15 credit for future service after the referral's first completed service.</p>
			</div>
		</div>

		<hr>

		<footer>
			<p>&copy; ${appconfig.siteName} 2013</p>
		</footer>

	</div>
	<!-- /container -->

	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		$('.carousel').carousel('cycle')
	</script>
</body>
</html>

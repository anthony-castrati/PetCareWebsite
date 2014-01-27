<!DOCTYPE html>
<html lang="en">

<head>
<title>Home - ${appconfig.siteName}</title>
<meta name="description" content="Capital City Pet Care is a licensed, bonded and insured pet sitting and dog walking service that provides care for dogs, cats, small animals and exotics in Raleigh, NC and Knightdale, NC">
<jsp:include page="header.jsp" />
</head>

<body>
        <div class="container">
        	<jsp:include page="navigation.jsp" />
        	<div class="wrapper">
		        <div class="banner">
		            <div class="row">
		                <div class="col-md-4 col-sm-3 col-xs-4 hidden-xs logo">
		                </div>
		                <div class="col-md-8 col-sm-9 col-xs-12 hidden-print">
		                    <jsp:include page="carousel.jsp" />
		                </div>
		            </div>
		        </div><br>
                <!-- Example row of columns -->
                <div class="row">
                        <div class="col-md-4">
                                <h2>Free Consultation</h2>
                                <p>
                                        Initial consultation is free if you book with us before or during your consultation! We will travel to your home to meet with you and your pet one on one to create a specialized care plan for you and your extended family. <a href="contact">Contact us</a> today!
                                </p>
                        </div>
                        <div class="col-md-4">
                                <h2>Our Services</h2>
                                <p>
                                        Capital City Pet Care is a licensed, bonded and insured pet sitting service that provides care for dogs, cats, small animals and exotics in Raleigh and Knightdale.  We are proud to offer daily visits, dog walking, medication administration, nail trims and much more! For more information, please check out our <a href="services">services</a> page.
                                </p>
                        </div>
                        <div class="col-md-4">
                                <h2>Referral Program</h2>
                                <p>Refer a friend or family member and receive a $15 credit for future service after the referral's first completed service.</p>
                        </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp" />
        <script type="text/javascript">
                $('.carousel').carousel('cycle')
        </script>
</body>
</html>
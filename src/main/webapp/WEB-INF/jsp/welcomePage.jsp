<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home - ${appconfig.siteName}</title>
    <meta name="description"
          content="Capital City Pet Care is a bonded and insured pet sitting and dog walking service that provides care for dogs, cats, small animals and exotics in Raleigh, NC and Knightdale, NC">
    <jsp:include page="header.jsp"/>
</head>

<body>
<jsp:include page="navigation.jsp"/>
<div class="container">
    <div class="banner">
        <h1 class="logo">Capital City Pet Care</h1>
        <h3>Pet Sitting &amp; Dog Walking</h3>
        <div class="row">
            <div class="col-md-10 col-md-offset-1 hidden-print">
                <jsp:include page="carousel.jsp"/>
            </div>
        </div>
    </div>
    <br>
    <!-- Example row of columns -->
    <div class="row deals">
        <div class="col-md-4">
            <h2>Free Consultation</h2>
            <img src="img/free_consultation.jpg">

            <p>
                Sniff us out! This consultation is FREE for all clients who pre-pay and book services with Capital City Pet Care before or during the consult! We will travel to
                your home to meet with you and your pet one on one to create a specialized care plan for you and your
                extended family. <a href="contact">Contact us</a> today!
            </p>
        </div>
        <div class="col-md-4">
            <h2>Our Services</h2>
            <img src="img/services.jpg">

            <p>
                Capital City Pet Care is a bonded and insured pet sitting service that provides care for dogs,
                cats, small animals and exotics in Raleigh and Knightdale. We are proud to offer daily visits, dog
                walking, medication administration, nail trims and much more!
            </p>
        </div>
        <div class="col-md-4">
            <h2>Referral Program</h2>
            <img src="img/referral_program.jpg">

            <p>We are always excited to welcome new members into our extended family! Refer a friend or family member and receive a $15 credit for future service after the referral's first
                completed service.</p>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<script type="text/javascript">
    $('.carousel').carousel('cycle')
</script>
</body>
</html>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home - ${appconfig.siteName}</title>
    <meta name="description"
          content="Capital City Pet Care is a fully bonded and insured pet sitting and dog walking service that provides care for dogs, cats, small animals and exotics in Raleigh, NC and Knightdale, NC">
    <jsp:include page="header.jsp"/>
</head>

<body>
  <div class="container content">
    <div class="row">
      <div class="col-xs-12 navi">
        <jsp:include page="navigation.jsp"/>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-12 welcome">
          <span>Welcome</span>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-12">
        <blockquote>As pet parents, we strive to provide the best possbile life for our forever friends, but day to day life can become hectic. Some of us work long hours or maybe we just can&apos;t take our beloved pet on our next vacation. Every pet has different needs and whether you have a puppy or a senior pet that needs more frequent outings, a high energy pet that needs extra mental and physical stimulation, or you just want to provide your pet with the comforts that boarding facilities just can&apos;t accommodate, whatever the reason, let Capital City Pet Care of Raleigh and Knightdale be there for you and your pet. We understand the importance of allowing pets to stay in their own home where they feel most secure. So, if you're going on vacation or anticipate a long day at work, let us provide you with the peace of mind that your pets are receiving the highest quality of care while you&apos;re away.<p></p></blockquote>
      </div>
    </div>
    <div class="row margin-bottom">
      <div class="col-xs-12">
        <div class="mask"></div>
      </div>
    </div>
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
                Capital City Pet Care is a fully bonded and insured pet sitting service that provides care for dogs,
                cats, small animals and exotics in Raleigh and Knightdale. We are proud to offer daily visits, dog
                walking, medication administration, nail trims and <a href="services">much more</a>!
            </p>
        </div>
        <div class="col-md-4">
            <h2>Referral Program</h2>
            <img src="img/referral_program.jpg">

            <p>We are always excited to welcome new members into our extended family! Refer a friend or family member and receive a $15 credit for future service after the referral's first
                completed service.</p>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>
  </div>
</body>
</html>

<!DOCTYPE html>
<html lang="en">

  <head>
    <title>Home - ${appconfig.siteName}</title>
    <jsp:include page="header.jsp"/>
  </head>
  
  <body>
    <jsp:include page="navigation.jsp"/>

    <div class="container">

      <!-- Main hero unit for a primary marketing message or call to action -->
      <jsp:include page="carousel.jsp"/>
      <!-- Example row of columns -->
      <div class="row">
        <div class="span4">
          <h2>New Website</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div>
        <div class="span4">
          <h2>Our Services</h2>
          <p>We offer many services for you and your pets.  Anything from in-home care to nail trims and more!  For a full list of our services and prices, please check out our <a href="pricing">pricing</a> page.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
       </div>
        <div class="span4">
          <h2>Free Consultation</h2>
          <p>I offer free consultation for my services.  Please <a href="contact">contact me</a> and I will get back to you as soon as possible.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; ${appconfig.siteName} 2012</p>
      </footer>

    </div> <!-- /container -->
    
	<jsp:include page="footer.jsp"/>
  <script type="text/javascript">$('.carousel').carousel('cycle')</script>
  </body>
</html>

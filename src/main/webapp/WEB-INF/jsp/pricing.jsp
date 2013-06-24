<!DOCTYPE html>
<html lang="en">

  <head>
    <jsp:include page="header.jsp"/>
  </head>
  
  <body>
    <jsp:include page="navigation.jsp"/>

    <div class="container">

      <!-- Main hero unit for a primary marketing message or call to action -->
      
      <div class="row">
      	<div class="span10 offset1">
	      	<div class="row-fluid">
		      	<div class="span4 tier">
			      	<div></div>
			      	<div class="detail">
			      	test test test</div>
			      	<div></div>
		      	</div>
		      	<div class="span4 tier">2</div>
		      	<div class="span4 tier">3</div>
      		</div>
      	</div>
     </div>
     <div class="row">
        <div class="span8 offset2">
        <table class="table table-bordered table-striped">
          <caption>Walking Prices</caption>
          <thead>
            <tr>
              <th>Time</th>
              <th>Price</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>15 Minutes</td>
              <td><strong>$ 15</strong></td>
            </tr>
            <tr>
              <td>30 Minutes</td>
              <td><strong>$ 25</strong></td>
            </tr>
            <tr>
              <td>1 Hour</td>
              <td><strong>$ 50</strong></td>
            </tr>
          </tbody>
        </table>
        </div>
      </div>
      <div class="row">
        <div class="span8 offset2">
        <table class="table table-bordered table-striped">
          <caption>Additional Services</caption>
          <thead>
            <tr>
              <th>Additional Services</th>
              <th>Price</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                <dl class="dl-horizontal">
                <dt>Nail Trims</dt>
                <dd>Includes trimming of all nails and dew claws</dd>
                </dl>
              </td>
              <td><strong>$15</strong></td>
            </tr>
            <tr>
              <td>
                <dl class="dl-horizontal">
                <dt>Anal Gland Expression</dt>
                <dd>Get those nasties out of that ass!</dd>
                </dl>
              </td>
              <td><strong>$15</strong></td>
            </tr>
            <tr>
              <td>
                <dl class="dl-horizontal">
                <dt>Ear Cleaning</dt>
                <dd>Clean them nasty ears</dd>
                </dl>
              </td>
              <td><strong>$15</strong></td>
            </tr>
            <tr>
              <td>
                <dl class="dl-horizontal">
                <dt>Medication Administration</dt>
                <dd>I will give your animals medicine at whatever times you need</dd>
                </dl>
              </td>
              <td><strong>$15</strong></td>
            </tr>
            <tr>
              <td>
                <dl class="dl-horizontal">
                <dt>Soft Paw / Kitty Caps Application</dt>
                <dd>I will apply your soft paws to your cat or I will bring my own</dd>
                </dl>
              </td>
              <td><strong>$15</strong></td>
            </tr>
            <tr>
              <td>
                <dl class="dl-horizontal">
                <dt>Pet Taxi</dt>
                <dd>Charged if I need to take your pet to the animal hospital or pickup/dropoff</dd>
                </dl>
              </td>
              <td><strong>$15</strong></td>
            </tr>
          </tbody>
        </table>
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; ${appconfig.siteName} 2012</p>
      </footer>

    </div> <!-- /container -->

  <jsp:include page="footer.jsp"/>
  </body>
</html>

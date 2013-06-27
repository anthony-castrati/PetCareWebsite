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
      	<div>
	      	<div class="row">
		      	<div class="span4 tier text-center">
		      		<h3>Express</h3>
			      	<p>Up to 20 Minutes</p>
			      	<span class="muted"><strong>$16</strong></span>
			      	<div class="detail">
			      	<h4>Available Visits</h4>
			      	<p>AM, Midday, PM and Late Night</p>
			      	</div>
			      	<p>
			      	<small>Our most popular visit! This visit is designed for those pets who just need a bathroom break with short walk, food, water, litter box scoop, and a little TLC. Call it our "in and out" visit if you will!</small>
			      	</p>
		      	</div>
		      	<div class="span4 tier text-center">
		      		<h3>Regular</h3>
			      	<p>30 Minutes</p>
			      	<span class="muted"><strong>$18</strong></span>
			      	<div class="detail">
			      	<h4>Available Visits</h4>
			      	<p>AM, Midday, and PM</p>
			      	</div>
			      	<p>
			      	<small>This visit includes food, fresh water, a lengthy walk, litter box scooping, complimentary services, and lots of belly rubs and head scratches!</small>
			      	</p>
		      	</div>
		      	<div class="span4 tier text-center">
		      		<h3>Extended</h3>
			      	<p>45 Minutes</p>
			      	<span class="muted"><strong>$21</strong></span>
			      	<div class="detail">
			      	<h4>Available Visits</h4>
			      	<p>Midday Visit Only</p>
			      	</div>
			      	<p>
			      	<small>This visit includes food, fresh water, an extended walk, litter box scooping, complimentary services, and extra TLC!</small>
			      	</p>
		      	</div>
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

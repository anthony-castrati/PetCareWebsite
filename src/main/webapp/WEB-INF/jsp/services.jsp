<!DOCTYPE html>
<html lang="en">

  <head>
    <jsp:include page="header.jsp"/>
  </head>
  
  <body>
    <jsp:include page="navigation.jsp"/>

    <div class="container">

      <!-- Main hero unit for a primary marketing message or call to action -->
      
      		<div class="page-header">
      		<h1 class="text-center">Services</h1>
      		</div>
      		
      		<h2>Visits</h2>
      		<br>
	      	<div class="row">
		      	<div class="span4 tier text-center">
		      		<h3>Express</h3>
			      	<p>Up to 20 Minutes</p>
			      	<span class="muted price"><strong>$16*</strong></span>
			      	<div class="detail">
			      	<h4>Available Visits</h4>
			      	<p>AM, Midday, PM, Late Night</p>
			      	</div>
			      	<p class="description">
			      	<small>Our most popular visit! Includes a bathroom break with short walk, food, water, litter box scoop, complementary services** and a little TLC.</small>
			      	</p>
		      	</div>
		      	<div class="span4 tier text-center">
		      		<h3>Regular</h3>
			      	<p>30 Minutes</p>
			      	<span class="muted price"><strong>$18*</strong></span>
			      	<div class="detail">
			      	<h4>Available Visits</h4>
			      	<p>AM, Midday, PM</p>
			      	</div>
			      	<p class="description">
			      	<small>This visit includes a bathroom break and lengthy walk, fresh water and food, litter box scooping, complementary services**, and lots of belly rubs!</small>
			      	</p>
		      	</div>
		      	<div class="span4 tier text-center">
		      		<h3>Extended</h3>
			      	<p>45 Minutes</p>
			      	<span class="muted price"><strong>$21*</strong></span>
			      	<div class="detail">
			      	<h4>Available Visits</h4>
			      	<p>Midday Visit Only</p>
			      	</div>
			      	<p class="description">
			      	<small>This visit includes a bathroom break, extended walk and play time, fresh water and food, litter box scooping, complementary services**, and extra TLC!</small>
			      	</p>
		      	</div>
      		</div><br>
      		<div class="row">
      			<div class="span12">
	      			<div class="well well-small">
	      				<strong>*</strong> Prices are based on a <strong>2 pet household</strong>. Each additional cat is $2 and each additional dog is $3
	      			</div>
	      			<div class="well well-small">
					  <strong>**</strong> Complementary Services: Mail Collection, Trash Service, Light Rotation and Indoor Plant Watering
					</div>
      			</div>
      		</div>
      		<br>
      		<h2>Nail Trims</h2>
      		<blockquote>
			  <p>Nail trims can be difficult when doing them on your own. Let us help you skip the anxiety of cutting too short or let us help you get that smooth finish to keep you and your floor scratch free!</p>
			</blockquote>
      		<br>
      		<div class="row">
	      			<div class="span3 text-center nails">
	      					<h4>1 Pet</h4>
	      					<span class="muted price"><strong>$16</strong></span>
	      					<div class="detail subtle">
					      	Regular Finish
					      	</div>
	      			</div>
	      			<div class="span3 text-center nails">
	      					<h4>2 Pets</h4>
	      					<span class="muted price"><strong>$26</strong></span>
	      					<div class="detail subtle">
					      	Regular Finish
					      	</div>
	      			</div>
	      			<div class="span3 text-center nails">
	      					<h4>3+ Pets</h4>
	      					<span class="muted price"><strong>$10/pet</strong></span>
	      					<div class="detail subtle">
					      	Regular Finish
					      	</div>
	      			</div>
	      			<div class="span3 text-center nails">
	      					<h4>Dremel</h4>
	      					<span class="muted price"><strong>$20</strong></span>
	      					<div class="detail">
					      	Smooth Finish
					      	</div>
	      			</div>
      		</div>
      		<br>
      		<h2>Add-on Services</h2>
      		<blockquote>
			  <p>We offer many other services</p>
			</blockquote>
			<br>
			<div>
				<ul class="thumbnails">
	            <li class="span5">
	              Medication Administration 
				Oral/Topical $1
				Injectible $2
				Sub Q $5
	            </li>
	            <li class="span4">
	              Kitty caps/Soft Paw application - $15+
				Application Only     $12
				Kitty Caps Included  $18
	            </li>
	            <li class="span3">
	              Anal Sac Expression $15
	            </li>
	            <li class="span4">
	              Ear Cleaning $5+
	            </li>
	            <li class="span3">
	              Teeth Brushing $2
	            </li>
	          </ul>
			</div>
			
      <hr>

      <footer>
        <p>&copy; ${appconfig.siteName} 2012</p>
      </footer>

    </div> <!-- /container -->

  <jsp:include page="footer.jsp"/>
  </body>
</html>

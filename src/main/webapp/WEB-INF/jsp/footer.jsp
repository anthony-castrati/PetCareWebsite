<jsp:include page="reviews.jsp"/>
<footer>
    <div class="container">
        <div class="row visible-xs">
          <div class="col-xs-12">
            <aside id="sticky-social" class="mobile clearfix">
              <span class="rev">Reviews</span>
                <ul>
                    <li class="clearfix"><a href="https://www.angieslist.com/companylist/us/nc/raleigh/capital-city-pet-care-reviews-8025577.htm" class="angieslist" target="_blank"><img src="img/angieslisticon.png"/><span class="">Angie's List</span></a></li>
                    <li class="clearfix"><a href="https://www.yelp.com/biz/capital-city-pet-care-knightdale" class="yelp" target="_blank"><img src="img/Yelp_burst_negative_RGB.png"/><span class="">Yelp</span></a></li>
                    <li class="clearfix"><a href="https://goo.gl/qoMSPW" class="google" target="_blank"><img src="img/google_logo.png"/><span class="">Google</span></a></li>
                    <li class="clearfix"><a href="https://www.facebook.com/capcitypetcare/reviews" class="facebook" target="_blank"><img src="img/facebook_logo.png"/><span class="">Facebook</span></a></li>
                </ul>
            </aside>
          </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <ul>
                    <li>
                        &copy; ${appconfig.siteName} 2015
                    </li>
                    <li>
                        All rights reserved.
                    </li>
                    <li>
                        Raleigh &amp; Knightdale NC
                    </li>
                </ul>
            </div>
            <div class="col-md-4">
                <ul>
                    <li><i class="icon-phone icon-large"></i><a href="tel://919-732-7302">919.723.7302</a></li>
                    <li><i class="icon-envelope-alt icon-large"></i><a href="mailto:alexxis@capcitypetcare.com">alexxis@capcitypetcare.com</a></li>
                    <li><i class="icon-facebook-sign icon-large"></i><a href="http://www.facebook.com/capcitypetcare" target="_blank">Capital City Pet Care</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <a href="http://www.petsits.com" target="_blank"><img src='img/pups.gif' alt="PUPS - Professional United Pet Sitters"></a>
                <a href="http://www.petsitllc.com" target="_blank"><img src="img/psa.png" alt="PSA - Pet Sitters Association"></a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                Servicing areas in Raleigh and Knightdale [<a href="https://mapsengine.google.com/map/edit?mid=z6pNdum8fnnE.khBlpJYSTjcM">Service Map</a>]
            </div>
        </div>
    </div>



</footer>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="js/jquery.visible.min.js"></script>
<script>
    $(function () {

        $('[data-toggle="popover"]').popover()
        /** set pixels to affix menu to top based on display */
        var nav = $('nav');
        nav.attr( "data-offset-top", nav.offset().top);
    })
</script>

<aside class="hidden-xs" id="sticky-social">
  <span class="rev">Reviews</span>
    <ul>
        <li class="clearfix"><a href="https://www.angieslist.com/companylist/us/nc/raleigh/capital-city-pet-care-reviews-8025577.htm" class="angieslist pull-right" target="_blank"><img src="img/angieslisticon.png"/><span class="pull-right">Angie's List</span></a></li>
        <li class="clearfix"><a href="https://www.yelp.com/biz/capital-city-pet-care-knightdale" class="yelp pull-right" target="_blank"><img src="img/Yelp_burst_negative_RGB.png"/><span class="pull-right">Yelp</span></a></li>
        <li class="clearfix"><a href="https://goo.gl/qoMSPW" class="google pull-right" target="_blank"><img src="img/google_logo.png"/><span class="pull-right">Google</span></a></li>
        <li class="clearfix"><a href="https://www.facebook.com/capcitypetcare/reviews" class="facebook pull-right" target="_blank"><img src="img/facebook_logo.png"/><span class="pull-right">Facebook</span></a></li>
    </ul>
</aside>
<script>
var updateSocialPosition = function() {
  var container = $('.container.content');
  var reviews = $('#sticky-social');
  var left = container.outerWidth() + container.offset().left - 121;
  if (reviews.visible()) {
      reviews.css({'left': left, 'right': ''});
  } else {
    reviews.css({'left': '', 'right': '0px'});
  }
}
$(window).ready(updateSocialPosition);
$(window).resize(updateSocialPosition);
</script>

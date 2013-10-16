<!DOCTYPE html>
<html lang="en">

  <head>
    <jsp:include page="header.jsp"/>
  </head>
  
  <body onload="initialize()">
    <jsp:include page="navigation.jsp"/>

    <div class="container">

      <div class="row span9">
        <div id="map_canvas"></div>
      </div>
    </div>
  <jsp:include page="footer.jsp"/>
  
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDU7o67qnapIheRKRqFPYuZKoJM5c7wgK8&sensor=true">
    </script>
    <script type="text/javascript">
      function initialize() {
    	var image = 'img/NeedleWhite.png';
    	
        var mapOptions = {
          center: new google.maps.LatLng(35.772056,-78.638488),
          zoom: 11,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);
        
     // Try HTML5 geolocation
        if(navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = new google.maps.LatLng(position.coords.latitude,
                                             position.coords.longitude);

            var infowindow = new google.maps.InfoWindow({
              map: map,
              position: pos,
              content: 'Location found using HTML5.'
            });

            map.setCenter(pos);
          }, function() {
            handleNoGeolocation(true);
          });
        } else {
          // Browser doesn't support Geolocation
          handleNoGeolocation(false);
        }
        var beachMarker = new google.maps.Marker({
            position: mapOptions.center,
            map: map,
            icon: image
        });
      }
      

      

      function handleNoGeolocation(errorFlag) {
    	var content;
        if (errorFlag) {
          content = 'Error: The Geolocation service failed.';
        } else {
          content = 'Error: Your browser doesn\'t support geolocation.';
        }

        var options = {
          map: map,
          position: new google.maps.LatLng(35.772056,-78.638488),
          content: content
        };

        var infowindow = new google.maps.InfoWindow(options);
        map.setCenter(options.position);
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    
    </script>
  </body>
</html>

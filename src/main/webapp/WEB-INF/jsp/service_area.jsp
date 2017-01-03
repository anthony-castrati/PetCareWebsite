<!DOCTYPE html>
<html lang="en">

  <head>
    <jsp:include page="header.jsp"/>
  </head>

  <body onload="initialize()">
    <div class="container content">
      <div class="row">
        <div class="col-xs-12 navi">
          <jsp:include page="navigation.jsp"/>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 real-content">
          <div class="row">
              <div class="col-md-6 col-md-offset-3">
                  <div>
                      <a href="https://mapsengine.google.com/map/edit?mid=z6pNdum8fnnE.khBlpJYSTjcM">Search for your address</a> to see if you are in our service area.
                  </div>
              </div>
          </div>
          <div class="row">
              <div class="col-md-6 col-md-offset-3">
                  <iframe src="https://www.google.com/maps/d/embed?mid=z6pNdum8fnnE.khBlpJYSTjcM" width="100%" height="400px"></iframe>
              </div>
          </div>
        </div>
      </div>
      <jsp:include page="footer.jsp"/>
    </div>
  </body>
</html>

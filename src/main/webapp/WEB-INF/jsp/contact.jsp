<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">

  <head>
        <meta name="description" content="Schedule a consultation, ask us a question about our services or just leave us a friendly message.">
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
          <div class="col-xs-12 real-content">
            <div class="row">
              <div class="col-md-4 margin-bottom">
                <div class="row">
                    <div class="col-xs-12">
                      <h3 class="no-margin">Hours of Operation</h3>
                         <p>Monday - Sunday  5 a.m. - 10 p.m.</p>
                      <h3>Office/Phone Hours</h3>
                        <a href="tel:919-723-7302">919.723.7302</a>
                        <p>Monday - Friday 8 a.m. - 6 p.m.
                        </p>
                      <h3>Service Area</h3>
                      <a href="/service_area">Servicing areas in Raleigh and Knightdale</a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-md-offset-1">
                    <div class="row">
                            <div class="col-md-12">
                                    <jsp:include page="messaging.jsp"/>
                            </div>
                    </div>
                    <!-- Contact Form -->
                    <h3 class='no-margin'>Contact Us</h3>
                    <div class="row">
                    <div class="col-md-12">
                        Ready to schedule services or request additional information? Please contact us at <a href="mailto:alexxis@capcitypetcare.com">alexxis@capcitypetcare.com</a>
                    </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
        <jsp:include page="footer.jsp"/>
      </div>
  </body>
</html>

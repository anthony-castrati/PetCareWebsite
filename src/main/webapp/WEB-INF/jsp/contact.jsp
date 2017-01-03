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
                        <p>Monday - Friday 8 a.m. - 8 p.m.<br>
                        Saturday 1 p.m. - 6 p.m.</p>
                        <small>* Messages received on Sunday will be returned the next business day.</small>
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
                    <h3 class='no-margin'>Service Request Form</h3>
                    <div class="row">
                    <div class="col-md-12">
                    <form:form commandName="contactForm" method="post" action="contact" role="form">
                      <form:errors path="*" cssClass="alert alert-error" element="div" />
                      <div class="form-group">
                        <label for="name">Full Name</label>
                          <form:input id="name" path="name" placeholder="Full Name" cssClass="form-control"/>
                          <form:errors path="name" cssClass="error" />
                      </div>
                      <div class="form-group">
                        <label for="address">Full Address</label>
                        <div class="controls">
                          <form:input id="address" path="address" cssClass="form-control" placeholder="ex: 000 North St. Raleigh, NC 27601" />
                          <form:errors path="address" cssClass="error" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="phone">Phone</label>
                          <form:input cssClass="form-control" id="phone" path="phone" placeholder="919-555-5555" />
                          <form:errors path="phone" cssClass="error" />
                      </div>
                      <div class="form-group">
                        <label for="email">Email</label>
                          <form:input cssClass="form-control" id="email" path="email" placeholder="youremail@example.com" />
                          <form:errors path="email" cssClass="error" />
                      </div>
                      <div class="form-group">
                        <label for="pets">Pets</label>
                            <form:input cssClass="form-control" id="pets" path="pets" placeholder="2 dogs 1 cat" />
                            <form:errors path="pets" cssClass="error" />
                      </div>
                      <div class="form-group">
                        <label for="heardfrom">How did you hear about us?</label>
                            <form:input cssClass="form-control" id="heardfrom" path="heardfrom" placeholder="Google, Care.com, etc" />
                            <form:errors path="heardfrom" cssClass="error" />
                      </div>
                      <div class="form-group">
                        <label for="message">Additional Information</label>
                        <div class="form-controls">
                            <form:textarea cssClass="form-control" id="message" path="message" rows="5"/>
                            <form:errors path="message" cssClass="error" />
                        </div>
                      </div>
                      <div class="form-group">
                            <button class="btn btn-primary" type="submit">Submit</button>
                            <button class="btn" type="button" onclick="$(this).closest('form').find('input[type=text], textarea, select').val('');">Clear</button>
                      </div>
                    </form:form>
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

<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">

  <head>
        <meta name="description" content="Schedule a consultation, ask us a question about our services or just leave us a friendly message.">
    <jsp:include page="header.jsp"/>
  </head>
  <body>
    <jsp:include page="navigation.jsp"/>
      <div class="contactus container">
            <div class="page-header">
                <h1 class="text-center">Contact Us</h1>
            </div>
          <div class="row">
          <div class="col-md-4">
                <div class="contacts col-xs-12">
                    <div class="row"><div class="col-xs-2"><i class="icon-phone icon-large"></i></div><div class="col-xs-10"><a href="tel://919-732-7302">919.723.7302</a></div></div>
                    <div class="row"><div class="col-xs-2"><i class="icon-envelope-alt icon-large"></i></div><div class="col-xs-10"><a href="mailto:alexxis@capcitypetcare.com">alexxis@capcitypetcare.com</a></div></div>
                    <div class="row"><div class="col-xs-2"><i class="icon-facebook-sign icon-large"></i></div><div class="col-xs-10"><a href="http://www.facebook.com/capcitypetcare" target="_blank">Capital City Pet Care</a></div></div>
                </div>
                <div class="col-xs-12 contacts">
                  <h3>Hours of Operation</h3>
                     <p>Monday - Sunday  5 a.m. - 9 p.m.</p>
                  <h3>Phone Hours</h3>
                    <p>Monday - Friday 8 a.m. - 8 p.m.<br> 
                    Saturday 1 p.m. - 6 p.m.</p>
                    <small>* Messages received on Sunday will be returned the next business day</small>
                  <h3>Service Area</h3>
                  <a href="/service_area">Servicing areas in Raleigh and Knightdale</a>
                </div>
                <div class="col-xs-12 contacts">
                <h4></h4>
                <p>Texts, calls, and e-mails are generally responded too within 24 hours or sooner if your pet is in our care at the time of communication. Communications received outside of normal phone hours will be responded to the next business day. If you do not hear from us within 48 hours, we may not have received your message! Please contact us again! For faster response feel free to email us.</p>
                <p>
                We provide daily check-ins at no charge. We talk to numerous clients each day, and are happy to let you know how your pet is doing, but we must make sure we have time to extend the same courtesy to all of our clients. Please keep in mind that we must eventually end our work day and we appreciate your consideration when contacting us.
                </p>
                </div>
            </div>
            <div class="col-md-6 col-md-offset-1">
                <div class="row">
                        <div class="col-md-12">
                                <jsp:include page="messaging.jsp"/>
                        </div>
                </div>
                <!-- Contact Form -->
                <h3 class='alt'>Service Request Form</h3>
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
  <jsp:include page="footer.jsp"/>
  </body>
</html>

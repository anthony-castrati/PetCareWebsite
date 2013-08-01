<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">

  <head>
    <style>
    .error {
      color: #ff0000;
    }
     
    .errorblock {
      color: #000;
      background-color: #ffEEEE;
      border: 3px solid #ff0000;
      padding: 8px;
      margin: 16px;
    }
    </style>
    <jsp:include page="header.jsp"/>
  </head>
  
  <body>
    <jsp:include page="navigation.jsp"/>

    <div class="container">     
      <div class="container">
        <div class="row"><div class="span12"><h1>Contact Me</h1></div></div><br><br>
        <div class="row"><div class="span12"><h3>Contact Form</h3></div></div><br>
        <!-- Contact Form -->
        <form:form cssClass="form-horizontal" commandName="contactForm" method="post" action="contactForm">
          <form:errors path="*" cssClass="alert alert-error" element="div" />
          <div class="mini-layout">
            <div class="mini-layout-body">
          <div class="control-group">
            <label class="control-label" for="name">Full Name</label>
            <div class="controls">
              <form:input id="name" path="name" placeholder="Full Name" cssErrorClass="error"/>
              <form:errors path="name" cssClass="error" />
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="street">Street Address</label>
            <div class="controls">
              <form:input id="street" path="street" placeholder="Street Address" />
              <form:errors path="street" cssClass="error" />
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="city">City</label>
            <div class="controls">
              <form:input id="city" path="city" placeholder="City" />
              <form:errors path="city" cssClass="error" />
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="state">State</label>
            <div class="controls">
              <form:select id="state" name="state" path="state">
                <form:option value="" label="-- Choose one --" />
                <form:options items="${states.states}"/>
              </form:select>
              <form:errors path="state" cssClass="error" />
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="state">Zip</label>
              <div class="controls">
                <form:input id="zip" path="zip" placeholder="Zip" />
                <form:errors path="zip" cssClass="error" />
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="emeail">Email</label>
            <div class="controls">
              <form:input id="email" path="email" placeholder="youremail@example.com" />
              <form:errors path="email" cssClass="error" />
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="pets">Pets</label>
              <div class="controls">
                <form:input id="pets" path="pets" placeholder="2 dogs 1 cat" />
                <form:errors path="pets" cssClass="error" />
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="message">Message</label>
            <div class="controls controls-row">
            	<form:textarea id="message" path="message" rows="5" cssClass="span5"/>
            	<form:errors path="message" cssClass="error" />
            </div>
          </div>
          <div class="control-group">
          <div class="controls controls-row">
            <div class="span2 offset3">
                <button class="btn btn-primary" type="submit">Submit</button>
                <button class="btn" type="button">Clear</button>
            </div>
          </div>
          </div>
          </div>
          </div>
        </form:form>
        
        <div class="row"><div class="span12"><h3>Other Contacts</h3></div></div><br>
        <div class="row contact"><div class="span2"><i class="icon-phone icon-large"></i></div><div class="span5"><a href="tel://919-816-2195">919.816.2195</a></div></div>
        <div class="row contact"><div class="span2"><i class="icon-envelope-alt icon-large"></i></div><div class="span7"><a href="mailto:alexxis@capcitypetcare.com">alexxis@capcitypetcare.com</a></div></div>
        <div class="row contact"><div class="span2"><i class="icon-facebook-sign icon-large"></i></div><div class="span7"><a href="http://www.facebook.com/capcitypetcare">Capital City Pet Care</a></div></div>
      </div>
      <hr>

      <footer>
        <p>&copy; ${appconfig.siteName} 2013</p>
      </footer>

    </div> <!-- /container -->

  <jsp:include page="footer.jsp"/>
  </body>
</html>

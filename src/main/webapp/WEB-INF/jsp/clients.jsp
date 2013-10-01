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
            <div class="page-header">
                <h1 class="text-center">Our Clients</h1>
            </div>
          <div class="row">
            <div class="col-md-8">
                <h2>Gallery</h2>
                <jsp:include page="gallery.jsp"/>
            </div>
            <div class="col-md-3 col-md-offset-1">
                <h2>Testimonials</h2>
            </div>
          </div>
      </div>
  <jsp:include page="footer.jsp"/>
  </body>
</html>

<!DOCTYPE html>
<html lang="en">

  <head>
    <jsp:include page="../header.jsp"/>
  </head>
  
  <body>
    <jsp:include page="../navigation.jsp"/>
<div class="container">
	<div class="hero-unit center">
	    <h1>Page Not Found <small><font face="Tahoma" color="red">Error 404</font></small></h1>
	    <br>
	    <p>The page you requested could not be found. To get back on track, use your browsers <b>Back</b> button to navigate to the page you have prevously come from</p>
	    <p><b>Or you could just press this neat little button:</b></p>
	    <a href="<%=request.getContextPath()%>" class="btn btn-large btn-info"><i class="icon-home icon-white"></i> Take Me Home</a>
	  </div>
</div>

  <jsp:include page="../footer.jsp"/>
  </body>
</html>
  
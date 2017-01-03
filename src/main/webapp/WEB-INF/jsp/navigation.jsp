<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header role="banner">
  <div class="small-banner">
    Contact us today! | <a href="mailto:alexxis@capcitypetcare.com">alexxis@capcitypetcare.com</a>
    <a href="https://www.instagram.com/capitalcitypetcare13"><i class="icon-large icon-instagram pull-right"></i></a>
    <a href="https://www.facebook.com/capcitypetcare/"><i class="icon-large icon-facebook pull-right"></i></a>
  </div>
  <div class="prenav">
    <div class="row logo-row hidden-xs">
      <div class="col-xs-3">
        <div class="logo-container">
          <img class="logo" src="img/CCPC_Logo_Final_No_Text.png"/>
        </div>
      </div>
      <div class="col-xs-9 business-name-container">
        <div class="full-business-name">
          <div class="row">
            <span class="business-name col-xs-12">Capital City Pet Care</span>
          </div>
          <div class="row">
            <span class="col-xs-12 business-purpose">Pet Sitting &amp; Dog Walking</span>
          </div>
        </div>
    </div>
  </div>
  <nav class="navbar navbar-inverse" data-spy="affix">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand visible-xs" href="#">
          <img class="logo" src="img/CCPC_Logo_Final_No_Text.png">
          <div class="full-business-name" style="display: inline-block;">
            <div class="row">
              <span class="business-name col-xs-12">Capital City Pet Care</span>
            </div>
            <div class="row">
              <span class="col-xs-12 business-purpose">Pet Sitting &amp; Dog Walking</span>
            </div>
          </div>
        </a>
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
              <c:forEach items="${nav.navItems}" var="entry">
                  <c:choose>
                      <c:when test = "${entry.value == title}">
                          <li class="active"><a href="${entry.key}">${entry.value}</a></li>
                      </c:when>
                      <c:otherwise>
                          <li><a href="${entry.key}">${entry.value}</a></li>
                      </c:otherwise>
                  </c:choose>
              </c:forEach>
              <c:choose>
                <c:when test = '${"Services" == title}'>
                    <li class="active dropdown">
                </c:when>
                <c:otherwise>
                  <li class="dropdown">
                </c:otherwise>
              </c:choose>
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Services <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="services#consultations">Consultations</a></li>
                  <li><a href="services#vacation-visits">Vacation Visits</a></li>
                  <li><a href="services#dog-walking">Midday Dog Walking</a></li>
                  <li><a href="services#nail-trims">Nail Trims</a></li>
                  <li><a href="services#expressions">Expressions</a></li>
                  <li><a href="services#add-ons">Add-on Services</a></li>
                </ul>
              </li>
              <li>
                  <a href="https://www.timetopet.com/portal/capital-city-pet-care" class="btn btn-default client-login">
                      Client Login
                      <span class="glyphicon glyphicon-user"></span>
                  </a>
              </li>
          </ul>
      </div>
    </div>
  </nav>
</header>

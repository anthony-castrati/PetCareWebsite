    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
	    <div class="navbar-header">
	      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
            <img src="img/CapitalCityPetCareLogo.png">
          <a class="navbar-brand" href="home">${appconfig.siteName}</a>
	    </div>
	    
	    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
	      <ul class="nav navbar-nav">
	        <!-- Navigation from bean -->
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
	      </ul>
	    </nav>
	</div>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <header class="navbar navbar-inverse navbar-fixed-top" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img class="visible-xs" src="img/CapitalCityPetCareLogo.png">
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
                    <li>
                        <a href="https://www.timetopet.com/portal/capital-city-pet-care" class="btn btn-default client-login">
                            Client Login 
                            <span class="glyphicon glyphicon-user"></span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

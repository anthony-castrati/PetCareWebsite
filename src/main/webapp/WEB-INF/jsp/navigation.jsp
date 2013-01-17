    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">${appconfig.siteName}</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
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
               <!--
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li class="nav-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li> -->
            </ul>
            <!--<form class="navbar-form pull-right">
              <input class="span2" type="text" placeholder="Email">
              <input class="span2" type="password" placeholder="Password">
              <button type="submit" class="btn">Sign in</button>
            </form>-->
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
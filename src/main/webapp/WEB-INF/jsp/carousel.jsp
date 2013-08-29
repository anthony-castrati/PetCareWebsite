              <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
              <div id="myCarousel" class="carousel slide">
                  <ol class="carousel-indicators">
                    <%int i = 0; %>
                      <c:forEach items="${carousel.scrollingImages}" var="entry">
                      <li data-target="#myCarousel" data-slide-to="<%= i %>" class="<%= i++ == 0 ? "active" : ""%>"></li>
                      </c:forEach>
                  </ol>
                <div class="carousel-inner">
                  <%i = 0; %>
                  <c:forEach items="${carousel.scrollingImages}" var="entry">
                  <div class="item<%= i++ == 0 ? " active" : ""%>">
                    <img src="${entry.key}" alt="">
                  </div>
                  </c:forEach>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="icon-prev"></span></a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="icon-next"></span></a>
              </div>

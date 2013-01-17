              <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
              <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                  <%int i = 0; %>
                  <c:forEach items="${carousel.scrollingImages}" var="entry">
                  <div class="item<%= i++ == 0 ? " active" : ""%>">
                    <img src="${entry.key}" alt="">
                    <div class="carousel-caption">
                      <h4>${entry.value}</h4>
                    </div>
                  </div>
                  </c:forEach>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
              </div>
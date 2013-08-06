<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="sildshow">
<div id="carousel-example-captions" class="carousel slide bs-docs-carousel-example">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-captions" data-slide-to="0" class=""></li>
          <li data-target="#carousel-example-captions" data-slide-to="1" class="active"></li>
          <li data-target="#carousel-example-captions" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
          <img alt="" src='<c:url value="resources/bootstrap/images/img1.jpg"/>' height="200" width="400">
            <div class="carousel-caption">
              <h3>Innovation never Ends</h3>
              <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
            </div>
          </div>
          <div class="item">
           <img alt="" src='<c:url value="resources/bootstrap/images/game1.jpg"/>' height="200" width="400">
            <div class="carousel-caption">
              <h3>Second slide label</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
          </div>
          <div class="item">
           <img alt="" src='<c:url value="resources/bootstrap/images/nfs.jpg"/>' height="200" width="400">
            <div class="carousel-caption">
              <h3>Third slide label</h3>
              <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
            </div>
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-captions" data-slide="prev">
          <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-captions" data-slide="next">
          <span class="icon-next"></span>
        </a>
      </div>
</div>
<script>
$(document).ready(function(){
	$('.carousel').carousel();
});
</script>
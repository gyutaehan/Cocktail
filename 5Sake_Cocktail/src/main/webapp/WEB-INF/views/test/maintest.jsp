 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NEWS FEED</title>
    <link rel="stylesheet" href="./resources/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="./resources/assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="./resources/assets/main/css/gallery/gallery.css">
    <link rel="stylesheet" href="./resources/assets/main/css/loadmore/loadmore.css">
    <link rel="stylesheet" href="./resources/assets/main/css/navbar/navbar.css">
</head>

<body><div class="navbar is-top-fixed">
  <div class="container-fluid">
    <div class="container">

      <div class="navbar-left">
        <a href="#" class="navbar-toggle">
           <span></span>
           <span></span>
           <span></span>
        </a>
      </div>
      <!-- navbar-left -->

      <div class="navbar-center">
        <a href="#" class="navbar-item navbar-logo">
          <i class="fas fa-glass-martini icon"></i>
        </a>
        <a href="#" class="navbar-item navbar-logo">
          <i class="fab fa-microsoft icon"></i>
        </a>
      </div>
      <!-- navbar-center -->

      <div class="navbar-right">
        <a href="#" class="navbar-item">
          <i class="fas fa-search"></i>
        </a>

        <a href="#" class="navbar-item is-avatar" @click.prevent="showProfilePanel">
          <img src="https://unsplash.it/200/200?image=1005" alt="Avatar"/>
        </a>
      </div>
      <!-- navbar-center -->
    </div>
    <!-- container -->
  </div>
</div>

<!-- end navbar -->


<div id="grid-gallery" class="grid-gallery">
  <section class="grid-wrap">
    <ul class="grid">
      <li class="grid-sizer"></li>
      <!-- for Masonry column width -->
      <li>
        <figure>
          <img src="./resources/assets/main/img/simple/backyard-barbecue.jpg" />
          <figcaption>
            <h3>Letterpress asymmetrical</h3>
            <p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
          </figcaption>
        </figure>
      </li>
      <li>
        <figure>
          <img src="./resources/assets/main/img/simple/cocktail3.jpg" />
          <figcaption>
            <h3>Vice velit chia</h3>
            <p>Laborum tattooed iPhone, Schlitz irure nulla Tonx retro 90's chia cardigan quis asymmetrical paleo. </p>
          </figcaption>
        </figure>
      </li>
      <li>
        <figure>
          <img src="./resources/assets/main/img/simple/flip-flops-low-res-1024x683_orig.jpg" />
          <figcaption>
            <h3>Brunch semiotics</h3>
            <p>Ex disrupt cray yr, butcher pour-over magna umami kitsch before they sold out commodo.</p>
          </figcaption>
        </figure>
      </li>
      <li>
        <figure>
          <img src="./resources/assets/main/img/simple/HT_daybreaker_sober_party_1_sk_150320_4x3_992.jpg" />
          <figcaption>
            <h3>Chillwave nihil occupy</h3>
            <p>In post-ironic gluten-free deserunt, PBR&B non pork belly cupidatat polaroid. </p>
          </figcaption>
        </figure>
      </li>
      <li>
        <figure>
          <img src="./resources/assets/main/img/simple/ibiza-rocks-craig-david-2017_2048x.jpeg" />
          <figcaption>
            <h3>Kale chips lomo biodiesel</h3>
            <p>Pariatur food truck street art consequat sustainable, et kogi beard qui paleo. </p>
          </figcaption>
        </figure>
      </li>
      <li>
        <figure>
          <img src="./resources/assets/main/img/simple/R-4447240-1447254505-8970.jpeg.jpg" />
          <figcaption>
            <h3>Exercitation occaecat</h3>
            <p>Street chillwave hoodie ea gentrify.</p>
          </figcaption>
        </figure>
      </li>
    </ul>
    <!-- loadmore button -->
  </section>
  <!-- // grid-wrap -->


  <section class="slideshow">
    <ul>
      <li>
        <figure>
          <figcaption>
            <h3>Letterpress asymmetrical</h3>
            <p>Kale chips lomo biodiesel stumptown Godard Tumblr, mustache sriracha tattooed cray aute slow-carb placeat delectus. Letterpress asymmetrical fanny pack art party est pour-over skateboard anim quis, ullamco craft beer.</p>
          </figcaption>
          <img src="https://cdn.diffordsguide.com/contrib/stock-images/2016/1/44/20164f03a9e22720e8042ad9c39a96c03bea.jpg" alt="img01" />
        </figure>
      </li>
      <li>
        <figure>
          <figcaption>
            <h3>Vice velit chia</h3>
            <p>Chillwave Echo Park Etsy organic Cosby sweater seitan authentic pour-over. Occupy wolf selvage bespoke tattooed, cred sustainable Odd Future hashtag butcher.</p>
          </figcaption>
          <img src="https://cdn.diffordsguide.com/contrib/stock-images/2016/7/24/2016080ba70138af4465cc7acc377c8c8e7c.jpg" alt="img02" />
        </figure>
      </li>
      <li>
        <figure>
          <figcaption>
            <h3>Brunch semiotics</h3>
            <p>IPhone PBR polaroid before they sold out meh you probably haven't heard of them leggings tattooed tote bag, butcher paleo next level single-origin coffee photo booth.</p>
          </figcaption>
          <img src="https://cdn.diffordsguide.com/contrib/stock-images/2016/7/24/2016080ba70138af4465cc7acc377c8c8e7c.jpg" alt="img03" />
        </figure>
      </li>
      <li>
        <figure>
          <figcaption>
            <h3>Chillwave nihil occupy</h3>
            <p>Vice cliche locavore mumblecore vegan wayfarers asymmetrical letterpress hoodie mustache. Shabby chic lomo polaroid, scenester 8-bit Portland Pitchfork VHS tote bag.</p>
          </figcaption>
          <img src="https://cdn.diffordsguide.com/contrib/stock-images/2017/8/49/201746c438fdcb534ea73fd518baa2a0e386.jpg" alt="img04" />
        </figure>
      </li>
      <li>
        <figure>
          <figcaption>
            <h3>Kale chips lomo biodiesel</h3>
            <p>Chambray Schlitz pug YOLO, PBR Tumblr semiotics. Flexitarian YOLO ennui Blue Bottle, forage dreamcatcher chillwave put a bird on it craft beer Etsy.</p>
          </figcaption>
          <img src="https://cdn.diffordsguide.com/contrib/stock-images/2015/7/25/20153d9edca73fbc76ce9648f3e93498e916.jpg" alt="img05" />
        </figure>
      </li>
      <li>
        <figure>
          <figcaption>
            <h3>Exercitation occaecat</h3>
            <p>Cosby sweater hella lomo Thundercats VHS occupy High Life. Synth pop-up readymade single-origin coffee, fanny pack tousled retro. Fingerstache mlkshk ugh hashtag, church-key ethnic street art pug yr.</p>
          </figcaption>
          <img src="https://cdn.diffordsguide.com/contrib/stock-images/2016/1/53/20166bd7872f61c7dd865a47338583606426.jpg" alt="img06" />
        </figure>
      </li>
    </ul>
    <nav>
      <span class="icon nav-prev"></span>
      <span class="icon nav-next"></span>
      <span class="icon nav-close"></span>
    </nav>
    <div class="info-keys icon">Navigate with arrow keys</div>
  </section>
  <!-- // slideshow -->

  <div class="loadmore">
    <div class="row middle-on-small center-on-small">
      <div class="column small-12 medium-6 large-4">
        <a href="#!" class="c-button c-button--gooey">
          Load More
            <div class="c-button__blobs">
              <div></div>
              <div></div>
              <div></div>
            </div>
        </a>
      </div>
    </div>
  </div>
</div>
<!-- // grid-gallery -->


<script>
  new CBPGridGallery(document.getElementById('grid-gallery'));
</script>

<svg xmlns="http://www.w3.org/2000/svg" version="1.1" style="display: block; height: 0; width: 0;">
    <defs>
        <filter id="goo">
            <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur"></feGaussianBlur>
            <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo"></feColorMatrix>
            <feBlend in="SourceGraphic" in2="goo"></feBlend>
        </filter>
    </defs>
</svg>

    <script src="./resources/assets/js/jquery.min.js"></script>
    <script src="./resources/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="./resources/assets/main/js/gallery/cbpGridGallery.js"></script>
    <script src="./resources/assets/main/js/gallery/classie.js"></script>
    <script src="./resources/assets/main/js/gallery/imagesloaded.pkgd.min.js"></script>
    <script src="./resources/assets/main/js/gallery/masonry.pkgd.min.js"></script>
    <script src="./resources/assets/main/js/gallery/modernizr.custom.js"></script>
</body>

</html>
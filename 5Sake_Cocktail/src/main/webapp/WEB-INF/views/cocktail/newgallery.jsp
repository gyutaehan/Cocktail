<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NEWS FEED</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="./resources/assets/basic/css/navbar/navbar.css">
    <link rel="stylesheet" href="./resources/assets/basic/css/proflie_slide/slide_component.css">
</head>

<body><div class="navbar is-top-fixed">
  <div class="container-fluid">
    <div class="container">

      <div class="navbar-left">
        <a class="navbar-toggle" data-toggle="dropdown" aria-expanded="false" href="#">
           <span></span>
           <span></span>
           <span></span>
           <div id="recommend" class="dropdown-menu" style="margin-left: 150px;  margin-right: 150px;  margin-top: 0px;">
             <div>
               <div>
                 <button type="button" class="close" aria-label="Close">
                   <span aria-hidden="true">×</span>
                 </button>
               </div>
                       <div class="row_drop_userRecommend">
                           <div class="col-md-12">
                             <div class="card-group">
                                 <div class="card"><img class="card-img-top w-100 d-block" />
                                     <div class="card-body">
                                         <h4 class="card-title">Title</h4>
                                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                 </div>
                                 <!-- user picture here -->

                                 <div class="card"><img class="card-img-top w-100 d-block" />
                                     <div class="card-body">
                                         <h4 class="card-title">Title</h4>
                                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                 </div>
                                 <!-- randam cocktail -->

                                 <div class="card"><img class="card-img-top w-100 d-block" />
                                     <div class="card-body">
                                         <h4 class="card-title">Title</h4>
                                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                 </div>
                                 <!-- randam cocktail -->

                                 <div class="card"><img class="card-img-top w-100 d-block" />
                                     <div class="card-body">
                                         <h4 class="card-title">Title</h4>
                                         <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                 </div>
                                 <!-- randam cocktail -->
                             </div>
                           </div>
                       </div>
                       <!-- row_drop_userRecommend end -->

                       <div class="row_siterecommend">
                           <div class="col-md-12">
                               <div class="card-group">
                                   <div class="card"><img class="card-img-top w-100 d-block" />
                                       <div class="card-body">
                                           <h4 class="card-title">Title</h4>
                                           <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                   </div>
                                   <!-- randam cocktail -->
                                   <div class="card"><img class="card-img-top w-100 d-block" />
                                       <div class="card-body">
                                           <h4 class="card-title">Title</h4>
                                           <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                   </div>
                                   <!-- randam cocktail -->
                                   <div class="card"><img class="card-img-top w-100 d-block" />
                                       <div class="card-body">
                                           <h4 class="card-title">Title</h4>
                                           <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                                   </div>
                                   <!-- randam cocktail -->
                               </div>
                           </div>
                       </div>

                </div>
           </div>
           <!-- dropdax_menu -->
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
        <a href="#" class="navbar-item navbar-logo">
          <i class="fas fa-user-alt"></i>
        </a>
      </div>
      <!-- navbar-center -->

      <div class="navbar-right">
        <a href="#" class="navbar-item" data-toggle="dropdown" aria-expanded="false" href="#">
              <i id = "showRightPush" class="fas fa-search"></i>

              <div id ="search" class="dropdown-menu" style="margin-left: 150px;  margin-right: 150px;  margin-top: 0px;">
                <div class="row_drop_search">
                  <div>
                    <button type="button" class="close" aria-label="Close">
                      <span aria-hidden="true">×</span>
                    </button>
                  </div>
                    <div class="col-md-12">
                      <div class="card-group">
                          <div class="card"><img class="card-img-top w-100 d-block" />
                              <div class="card-body">
                                  <h4 class="card-title">Title</h4>
                                  <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                          </div>
                          <!-- user picture here -->

                          <div class="card"><img class="card-img-top w-100 d-block" />
                              <div class="card-body">
                                  <h4 class="card-title">Title</h4>
                                  <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                          </div>
                          <!-- randam cocktail -->

                          <div class="card"><img class="card-img-top w-100 d-block" />
                              <div class="card-body">
                                  <h4 class="card-title">Title</h4>
                                  <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                          </div>
                          <!-- randam cocktail -->

                          <div class="card"><img class="card-img-top w-100 d-block" />
                              <div class="card-body">
                                  <h4 class="card-title">Title</h4>
                                  <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Button</button></div>
                          </div>
                          <!-- randam cocktail -->
                      </div>
                    </div>
                </div>
                <div class="row_cocktail_fliter">
                    <div class="col-md-12" style="background-image: url('http://2.bp.blogspot.com/-rBQgW0Kk8ms/UDAcq9wGmAI/AAAAAAAAQgo/KyZLoQR37OY/s1600/amile+face.jpg');height: 300px;"></div>
                </div>
                <!-- cocktail_Fliter -->
              </div>
              <!-- dropdax_menu -->


          </a>
      </div>


      <div class="navbar-avatar">
        <a id="showRight" href="#" class="navbar-item is-avatar" @click.prevent="showProfilePanel">
            <img src="https://unsplash.it/200/200?image=1005" alt="Avatar"/>
          </a>
      </div>
      <!-- navbar-right -->

    </div>
  </div>
  <!-- container -->

</div>


<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
  <h3>Menu</h3>
  <a href="#">Celery seakale</a>
  <a href="#">Dulse daikon</a>
  <a href="#">Zucchini garlic</a>
  <a href="#">Catsear azuki bean</a>
  <a href="#">Dandelion bunya</a>
  <a href="#">Rutabaga</a>
</nav>

<script>
  var menuRight = document.getElementById('cbp-spmenu-s2'),
    showRight = document.getElementById('showRight'),
    body = document.body;

  showRight.onclick = function() {
    classie.toggle(this, 'active');
    classie.toggle(menuRight, 'cbp-spmenu-open');
    disableOther('showRight');
  };

  function disableOther(button) {
    if (button !== 'showRight') {
      classie.toggle(showRight, 'disabled');
    }
  }
</script>

    <div>
        <div class="container">
            <div class="row">
                <div class="col-md-12"></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div id="grid-gallery" class="grid-gallery"><section class="grid-warp">
  <ul class="grid">
    <li class="grid-sizer"></li>
    <!-- for Masonry column width -->
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/1.png" alt="img01" />
        <figcaption>
          <h3>Letterpress asymmetrical</h3>
          <p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/2.png" alt="img02" />
        <figcaption>
          <h3>Vice velit chia</h3>
          <p>Laborum tattooed iPhone, Schlitz irure nulla Tonx retro 90's chia cardigan quis asymmetrical paleo. </p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/3.png" alt="img03" />
        <figcaption>
          <h3>Brunch semiotics</h3>
          <p>Ex disrupt cray yr, butcher pour-over magna umami kitsch before they sold out commodo.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/4.png" alt="img04" />
        <figcaption>
          <h3>Chillwave nihil occupy</h3>
          <p>In post-ironic gluten-free deserunt, PBR&amp;B non pork belly cupidatat polaroid. </p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/5.png" alt="img05" />
        <figcaption>
          <h3>Kale chips lomo biodiesel</h3>
          <p>Pariatur food truck street art consequat sustainable, et kogi beard qui paleo. </p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/6.png" alt="img06" />
        <figcaption>
          <h3>Exercitation occaecat</h3>
          <p>Street chillwave hoodie ea gentrify.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/1.png" alt="img01" />
        <figcaption>
          <h3>Selfies viral four</h3>
          <p>Raw denim duis Tonx Shoreditch labore swag artisan High Life cred, stumptown Schlitz quinoa flexitarian mollit fanny pack.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/2.png" alt="img02" />
        <figcaption>
          <h3>Photo booth skateboard</h3>
          <p>Vinyl squid ex High Life. Paleo Neutra nulla master cleanse, Helvetica et enim nesciunt esse.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/3.png" alt="img03" />
        <figcaption>
          <h3>Ex fashion axe</h3>
          <p>Qui nesciunt et, in chia cliche irure. Eu YOLO nihil mollit twee locavore, tempor keytar asymmetrical irure aute sriracha consequat.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/4.png" alt="img04" />
        <figcaption>
          <h3>Thundercats next level</h3>
          <p>Portland nulla butcher ea XOXO, consequat Bushwick Pinterest elit twee pickled direct trade vero. </p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/5.png" alt="img05" />
        <figcaption>
          <h3>Bushwick selvage synth</h3>
          <p>Bicycle rights flannel Shoreditch, art party laboris Bushwick sriracha authentic chambray hella umami sed distillery master cleanse.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/1.png" alt="img01" />
        <figcaption>
          <h3>Bottle wayfarers locavore</h3>
          <p>Once there was a little asparagus, he was green and lonely.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/1.png" alt="img01" />
        <figcaption>
          <h3>Letterpress asymmetrical</h3>
          <p>Chillwave hoodie ea gentrify aute sriracha consequat.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/2.png" alt="img02" />
        <figcaption>
          <h3>Vice velit chia</h3>
          <p>Laborum tattooed iPhone, Schlitz irure nulla Tonx retro 90's chia cardigan quis asymmetrical paleo. </p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/3.png" alt="img03" />
        <figcaption>
          <h3>Brunch semiotics</h3>
          <p>Ex disrupt cray yr, butcher pour-over magna umami kitsch before they sold out commodo.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/4.png" alt="img04" />
        <figcaption>
          <h3>Chillwave nihil occupy</h3>
          <p>In post-ironic gluten-free deserunt, PBR&amp;B non pork belly cupidatat polaroid. </p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/5.png" alt="img05" />
        <figcaption>
          <h3>Kale chips lomo biodiesel</h3>
          <p>Pariatur food truck street art consequat sustainable, et kogi beard qui paleo. </p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/6.png" alt="img06" />
        <figcaption>
          <h3>Exercitation occaecat</h3>
          <p>Street chillwave hoodie ea gentrify.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/1.png" alt="img01" />
        <figcaption>
          <h3>Selfies viral four</h3>
          <p>Raw denim duis Tonx Shoreditch labore swag artisan High Life cred, stumptown Schlitz quinoa flexitarian mollit fanny pack.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/2.png" alt="img02" />
        <figcaption>
          <h3>Photo booth skateboard</h3>
          <p>Vinyl squid ex High Life. Paleo Neutra nulla master cleanse, Helvetica et enim nesciunt esse.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/3.png" alt="img03" />
        <figcaption>
          <h3>Ex fashion axe</h3>
          <p>Qui nesciunt et, in chia cliche irure. Eu YOLO nihil mollit twee locavore, tempor keytar asymmetrical irure aute sriracha consequat.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/4.png" alt="img04" />
        <figcaption>
          <h3>Thundercats next level</h3>
          <p>Portland nulla butcher ea XOXO, consequat Bushwick Pinterest elit twee pickled direct trade vero. </p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/5.png" alt="img05" />
        <figcaption>
          <h3>Bushwick selvage synth</h3>
          <p>Bicycle rights flannel Shoreditch, art party laboris Bushwick sriracha authentic chambray hella umami sed distillery master cleanse.</p>
        </figcaption>
      </figure>
    </li>
    <li>
      <figure>
        <img src="./resources/assets/gallery/img/test_image/1.png" alt="img01" />
        <figcaption>
          <h3>Bottle wayfarers locavore</h3>
          <p>Once there was a little asparagus, he was green and lonely.</p>
        </figcaption>
      </figure>
    </li>
  </ul>
</section>
<section class="slideshow">
  <ul>
    <li>
      <figure>
        <figcaption>
          <h3>Letterpress asymmetrical</h3>
          <p>Kale chips lomo biodiesel stumptown Godard Tumblr, mustache sriracha tattooed cray aute slow-carb placeat delectus. Letterpress asymmetrical fanny pack art party est pour-over skateboard anim quis, ullamco craft beer.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/1.png" alt="img01" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Vice velit chia</h3>
          <p>Chillwave Echo Park Etsy organic Cosby sweater seitan authentic pour-over. Occupy wolf selvage bespoke tattooed, cred sustainable Odd Future hashtag butcher.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/2.png" alt="img02" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Brunch semiotics</h3>
          <p>IPhone PBR polaroid before they sold out meh you probably haven't heard of them leggings tattooed tote bag, butcher paleo next level single-origin coffee photo booth.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/3.png" alt="img03" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Chillwave nihil occupy</h3>
          <p>Vice cliche locavore mumblecore vegan wayfarers asymmetrical letterpress hoodie mustache. Shabby chic lomo polaroid, scenester 8-bit Portland Pitchfork VHS tote bag.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/4.png" alt="img04" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Kale chips lomo biodiesel</h3>
          <p>Chambray Schlitz pug YOLO, PBR Tumblr semiotics. Flexitarian YOLO ennui Blue Bottle, forage dreamcatcher chillwave put a bird on it craft beer Etsy.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/5.png" alt="img05" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Exercitation occaecat</h3>
          <p>Cosby sweater hella lomo Thundercats VHS occupy High Life. Synth pop-up readymade single-origin coffee, fanny pack tousled retro. Fingerstache mlkshk ugh hashtag, church-key ethnic street art pug yr.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/6.png" alt="img06" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Selfies viral four</h3>
          <p>Ethnic readymade pug, small batch XOXO Odd Future normcore kogi food truck craft beer single-origin coffee banh mi photo booth raw denim. XOXO messenger bag pug VHS. Forage gluten-free polaroid, twee hoodie chillwave Helvetica.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/1.png" alt="img01" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Photo booth skateboard</h3>
          <p>Thundercats pour-over four loko skateboard Brooklyn, Etsy sriracha leggings dreamcatcher narwhal authentic 3 wolf moon synth Portland. Shabby chic photo booth Blue Bottle keffiyeh, McSweeney's roof party Carles.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/2.png" alt="img02" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Ex fashion axe</h3>
          <p>Ennui Blue Bottle shabby chic, organic butcher High Life tattooed meggings jean shorts Brooklyn sartorial polaroid. Cray raw denim +1, bespoke High Life Odd Future banh mi chillwave Marfa kogi disrupt paleo direct trade 90's Godard. </p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/3.png" alt="img03" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Thundercats next level</h3>
          <p>Typewriter authentic PBR, iPhone mixtape fixie post-ironic fingerstache Pitchfork artisan. Wayfarers master cleanse occupy, Tonx lo-fi swag Truffaut irony whatever Blue Bottle readymade PBR gluten-free. Lomo Pinterest Banksy fap. Retro ennui
            you probably haven't heard of them iPhone, PBR fashion axe polaroid.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/4.png" alt="img04" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Bushwick selvage synth</h3>
          <p>Schlitz deserunt pour-over consectetur. Selfies plaid asymmetrical farm-to-table, cred gastropub photo booth narwhal non roof party velit raw denim slow-carb meggings pug. Tempor post-ironic seitan cliche bicycle rights. Meh viral Williamsburg,
            quinoa 8-bit kale chips YOLO Marfa accusamus.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/5.png" alt="img05" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Bottle wayfarers locavore</h3>
          <p>Aliqua High Life art party fixie farm-to-table. Kitsch Echo Park shabby chic, narwhal fugiat Cosby sweater asymmetrical gastropub tofu. Authentic minim Pinterest Blue Bottle beard, aliqua chia XOXO dolor freegan banh mi vegan fugiat.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/1.png" alt="img01" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Letterpress asymmetrical</h3>
          <p>Pickled hoodie Pinterest 90's proident church-key chambray. Salvia incididunt slow-carb ugh skateboard velit, flannel authentic hoodie lomo fixie photo booth farm-to-table. Minim meggings Bushwick, semiotics Vice put a bird.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/1.png" alt="img01" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Vice velit chia</h3>
          <p>Tattooed assumenda chambray cray officia. 90's mollit ethnic church-key ex eu pop-up gentrify. Tonx raw denim eu, bitters nesciunt distillery Neutra pop-up. Drinking vinegar Helvetica Truffaut tattooed.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/2.png" alt="img02" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Brunch semiotics</h3>
          <p>Gentrify High Life adipisicing, duis slow-carb kogi Tumblr raw denim freegan Echo Park. Fingerstache laboris pork belly messenger bag, you probably haven't heard of them vegan twee Intelligentsia Vice Etsy pickled put a bird on it Godard roof
            party. Meggings small batch dreamcatcher velit.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/3.png" alt="img03" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Chillwave nihil occupy</h3>
          <p>Marfa exercitation non, beard +1 hashtag cardigan gluten-free mixtape church-key ugh eu Portland leggings. Ennui farm-to-table fingerstache keytar Echo Park tattooed. Seitan qui artisan, aliquip cupidatat sunt Portland wayfarers duis.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/4.png" alt="img04" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Kale chips lomo biodiesel</h3>
          <p>Lomo church-key whatever, seitan laborum drinking vinegar lo-fi semiotics nihil meh. Skateboard irure before they sold out Banksy. Narwhal High Life lomo aliqua drinking vinegar. PBR&B placeat proident, craft beer forage DIY nostrud meh flexitarian
            keytar Helvetica.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/5.png" alt="img05" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Exercitation occaecat</h3>
          <p>Skateboard Truffaut bicycle rights seitan normcore. Culpa lo-fi ennui, Pinterest before they sold out Echo Park roof party sapiente aesthetic consequat Truffaut freegan voluptate. Kogi banh mi vero nihil, freegan gluten-free cliche. Forage Etsy
            laboris anim normcore, McSweeney's ex.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/6.png" alt="img06" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Selfies viral four</h3>
          <p>Viral roof party locavore flexitarian nihil fanny pack actually Odd Future anim commodo. Sunt yr aute, enim quis plaid sartorial duis leggings lo-fi gluten-free. Tote bag flexitarian pug stumptown, Cosby sweater try-hard ethnic scenester. Mumblecore
            +1 hoodie accusamus skateboard slow-carb, Thundercats Godard placeat craft beer meh enim trust fund.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/1.png" alt="img01" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Photo booth skateboard</h3>
          <p>Culpa pour-over cray nesciunt dreamcatcher. Meggings distillery cillum raw denim voluptate, single-origin coffee lo-fi ethical iPhone four loko nihil salvia. Biodiesel ea Intelligentsia quis deep v, American Apparel trust fund slow-carb synth
            semiotics quinoa Brooklyn pour-over nulla Godard.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/2.png" alt="img02" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Ex fashion axe</h3>
          <p>Bespoke irony tousled nihil flexitarian, salvia tempor nostrud Bushwick hashtag Austin ethnic disrupt. Beard Helvetica nihil, chia craft beer Wes Anderson keytar dolore. Irure incididunt flexitarian photo booth cillum, YOLO deserunt Brooklyn
            artisan. Brunch assumenda irony, Blue Bottle roof party DIY ullamco quis.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/3.png" alt="img03" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Thundercats next level</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/4.png" alt="img04" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Bushwick selvage synth</h3>
          <p>Ethical Truffaut tofu food truck cred cornhole. Irure umami Austin cornhole blog ethical. Aliqua yr Truffaut, adipisicing hashtag Shoreditch eiusmod tempor literally vinyl.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/5.png" alt="img05" />
      </figure>
    </li>
    <li>
      <figure>
        <figcaption>
          <h3>Bottle wayfarers locavore</h3>
          <p>Pork belly irony Shoreditch fashion axe DIY. Portland banjo irony, squid gentrify Austin fixie church-key magna. Marfa artisan Echo Park, McSweeney's banjo sunt keytar tofu. Brooklyn PBR single-origin coffee disrupt polaroid ut, gluten-free
            XOXO plaid magna.</p>
        </figcaption>
        <img src="./resources/assets/gallery/img/test_image/large/1.png" alt="img01" />
      </figure>
    </li>
  </ul>
  <nav>
    <span class="icon nav-prev"></span>
    <span class="icon nav-next"></span>
    <span class="icon nav-close"></span>
  </nav>
  <div class="info-keys icon">Navigate with arrow keys</div>
</section></div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>
    <script src="./resources/assets/gallery/js/gallery/gallery_classie.js"></script>
    <script src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js"></script>
    <script src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js"></script>
    <script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
    <script src="./resources/assets/basic/js/proflie_slide/classie.js"></script>
	<script src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js"></script>
    <script>
         new CBPGridGallery( document.getElementById( 'grid-gallery' ) );
      </script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>NEWS FEED</title>
	<link rel="stylesheet"	href="./resources/assets/selfmaking/css/button/button.css">
	<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
	<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
	<link rel="stylesheet"	href="./resources/assets/gallery/css/uploadbutton.css">
	<link rel="stylesheet"	href="./resources/assets/gallery/css/circluar_layout.css">
	<link rel="stylesheet"	href="./resources/assets/gallery/css/photo_fitter.css">
</head>
<body>
	<div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="button_container">
						<div class="outer">
							<div class="inner">
								<div id="selfMaking_button">
									<h1 style="margin-top: 20px;">spirits</h1>
									
									<div id="alcole" class="button-group" data-filter-group='alcole' style="margin-top: 20px; margin-bottom: 20px;">
															
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="all" >ALL</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="brandy" >Brandy</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="whisky" >Whisky</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="vodka" >Vodka</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="rum" >Rum</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="dryjin" >Dry Jin</button>
										<button class="btn fil-cat btn-outline-primary" href="" data-rel="tequila" >Tequila</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div id="grid-gallery" class="grid-gallery">
						<section class="grid-wrap">
						<div>
							<div id="portfolio">
							<!-- 	<c:foreach 로 반복>
									<figure class="tile2 scale-anm ${tag} all">
										<img src="${imgsrc}" alt="" />
										<figcaption>
											<h3>${title}</h3>
											<p>${content}</p>
										</figcaption>
									</figure> 
									</c:foreach>
								-->
									<figure class="tile2 scale-anm brandy all">
										<img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/2-mon_1092-300x234.jpg" alt="" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
										</figcaption>
									</figure>
									<figure class="tile2 scale-anm whisky all">
										<img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/jti-icons_08-300x172.jpg" alt="" />										<figcaption>
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
										</figcaption>
									</figure>
									<figure class="tile2 scale-anm vodka all">
										<img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/emi_haze-300x201.jpg" alt="" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
										</figcaption>
									</figure>
									<figure class="tile2 scale-anm rum all">
										<img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/codystretch-300x270.jpg" alt="" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
										</figcaption>
									</figure>
									<figure class="tile2 scale-anm dryjin all">
										<img src="https://placeholdit.imgix.net/~text?txtsize=33&txt=350%C3%97190&w=350&h=190" alt="" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
										</figcaption>
									</figure>
									<figure class="tile2 scale-anm tequila all">
										<img src="https://placeholdit.imgix.net/~text?txtsize=19&txt=200%C3%97290&w=200&h=290" alt="" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
										</figcaption>
									</figure>
									<figure class="tile2 scale-anm brandy all">
										 <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/jti-icons_08-300x172.jpg" alt="" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
										</figcaption>
									</figure>
									<figure class="tile2 scale-anm whisky all">
										 <img src="http://demo.themerain.com/charm/wp-content/uploads/2015/04/transmission_01-300x300.jpg" alt="" />
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Laborum tattooed iPhone, Schlitz irure nulla Tonx
												retro 90's chia cardigan quis asymmetrical paleo.</p>
										</figcaption>
									</figure>
								</div>		
								</div>									
							<!-- <div style="clear:both;"></div>   -->
						</section>
						<section class="slideshow">
							<ul>
								<li>
									<figure>
										<figcaption>
											<h3>Letterpress asymmetrical</h3>
											<p>Kale chips lomo biodiesel stumptown Godard Tumblr,
												mustache sriracha tattooed cray aute slow-carb placeat
												delectus. Letterpress asymmetrical fanny pack art party est
												pour-over skateboard anim quis, ullamco craft beer.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img01" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Vice velit chia</h3>
											<p>Chillwave Echo Park Etsy organic Cosby sweater seitan
												authentic pour-over. Occupy wolf selvage bespoke tattooed,
												cred sustainable Odd Future hashtag butcher.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img02" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Brunch semiotics</h3>
											<p>IPhone PBR polaroid before they sold out meh you
												probably haven't heard of them leggings tattooed tote bag,
												butcher paleo next level single-origin coffee photo booth.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img03" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Chillwave nihil occupy</h3>
											<p>Vice cliche locavore mumblecore vegan wayfarers
												asymmetrical letterpress hoodie mustache. Shabby chic lomo
												polaroid, scenester 8-bit Portland Pitchfork VHS tote bag.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img04" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Kale chips lomo biodiesel</h3>
											<p>Chambray Schlitz pug YOLO, PBR Tumblr semiotics.
												Flexitarian YOLO ennui Blue Bottle, forage dreamcatcher
												chillwave put a bird on it craft beer Etsy.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img05" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Exercitation occaecat</h3>
											<p>Cosby sweater hella lomo Thundercats VHS occupy High
												Life. Synth pop-up readymade single-origin coffee, fanny
												pack tousled retro. Fingerstache mlkshk ugh hashtag,
												church-key ethnic street art pug yr.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img06" />
									</figure>
								</li>
								<li>
									<figure>
										<figcaption>
											<h3>Selfies viral four</h3>
											<p>Ethnic readymade pug, small batch XOXO Odd Future
												normcore kogi food truck craft beer single-origin coffee
												banh mi photo booth raw denim. XOXO messenger bag pug VHS.
												Forage gluten-free polaroid, twee hoodie chillwave
												Helvetica.</p>
										</figcaption>
										<img src="./resources/assets/basic/img/カクテルアイコン5.png"
											alt="img01" />
									</figure>
								</li>
							</ul>
							<nav>
								<span class="icon nav-prev"></span> <span class="icon nav-next"></span>
								<span class="icon nav-close"></span>
							</nav>
							<div class="info-keys icon">Navigate with arrow keys</div>
						</section>
					</div>
				</div>
				<!-- modal -->
				<div class="plus-button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">+</div>
				<!-- modal1_start -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog modal-lg">

					<!-- 	Modal content -->
						<div class="modal-content">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">
										<h3 class="text-center text-info">My own cocktail</h3>
										<div class="row">
										
											<div class="col-md-3">
												<div class="card bg-default">
												
													<div class='selector'>
														<ul>
															<li><input id='1' type='checkbox'> <label
																for='1'>Option 1</label></li>
															<li><input id='2' type='checkbox'> <label
																for='2'>Option 2</label></li>
															<li><input id='3' type='checkbox'> <label
																for='3'>Option 3</label></li>
															<li><input id='4' type='checkbox'> <label
																for='4'>Option 4</label></li>
															<li><input id='5' type='checkbox'> <label
																for='5'>Option 5</label></li>
															<li><input id='6' type='checkbox'> <label
																for='6'>Option 6</label></li>
															<li><input id='7' type='checkbox'> <label
																for='7'>Option 7</label></li>
															<li><input id='8' type='checkbox'> <label
																for='8'>Option 8</label></li>
														</ul>
														<button>Click here</button>
													</div>
													
												</div>
												<div class="card">
													<div class='selector'>
														<ul>
															<li><input id='1' type='checkbox'> <label
																for='1'>Option 1</label></li>
															<li><input id='2' type='checkbox'> <label
																for='2'>Option 2</label></li>
															<li><input id='3' type='checkbox'> <label
																for='3'>Option 3</label></li>
															<li><input id='4' type='checkbox'> <label
																for='4'>Option 4</label></li>
															<li><input id='5' type='checkbox'> <label
																for='5'>Option 5</label></li>
															<li><input id='6' type='checkbox'> <label
																for='6'>Option 6</label></li>
															<li><input id='7' type='checkbox'> <label
																for='7'>Option 7</label></li>
															<li><input id='8' type='checkbox'> <label
																for='8'>Option 8</label></li>
														</ul>
														<button>Click here</button>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<img alt="Bootstrap Image Preview"
													src="https://www.layoutit.com/img/sports-q-c-140-140-3.jpg"
													class="rounded-circle" />
													
												<div class="card">
													<h5 class="card-header">Card title</h5>
													<div class="card-body">
														<p class="card-text">Card content</p>
													</div>
													<div class="card-footer">Card footer</div>
												</div>
												
												<div class="row">
													<div class="col-md-12">
														<div class="card">
															<h5 class="card-header">Card title</h5>
															<div class="card-body">
																<p class="card-text">Card content</p>
															</div>
															<div class="card-footer">Card footer</div>
														</div>
													</div>
												</div>
												
												<div class="progress">
													<div
														class="progress-bar w-75 progress-bar-striped progress-bar-animated">
													</div>
												</div>
											</div>
											
											<div class="col-md-3">
											
												<div class="card">
													<div class='selector'>
														<ul>
															<li><input id='1' type='checkbox'> <label
																for='1'>Option 1</label></li>
															<li><input id='2' type='checkbox'> <label
																for='2'>Option 2</label></li>
															<li><input id='3' type='checkbox'> <label
																for='3'>Option 3</label></li>
															<li><input id='4' type='checkbox'> <label
																for='4'>Option 4</label></li>
															<li><input id='5' type='checkbox'> <label
																for='5'>Option 5</label></li>
															<li><input id='6' type='checkbox'> <label
																for='6'>Option 6</label></li>
															<li><input id='7' type='checkbox'> <label
																for='7'>Option 7</label></li>
															<li><input id='8' type='checkbox'> <label
																for='8'>Option 8</label></li>
														</ul>
														<button>Click here</button>
													</div>
												</div>
												
												<div class="card">
													<div class='selector'>
														<ul>
															<li><input id='1' type='checkbox'> 
															<label for='1'>Option 1</label></li>
															<li><input id='2' type='checkbox'> <label
																for='2'>Option 2</label></li>
															<li><input id='3' type='checkbox'> <label
																for='3'>Option 3</label></li>
															<li><input id='4' type='checkbox'> <label
																for='4'>Option 4</label></li>
															<li><input id='5' type='checkbox'> <label
																for='5'>Option 5</label></li>
															<li><input id='6' type='checkbox'> <label
																for='6'>Option 6</label></li>
															<li><input id='7' type='checkbox'> <label
																for='7'>Option 7</label></li>
															<li><input id='8' type='checkbox'> <label
																for='8'>Option 8</label></li>
														</ul>
														<button>Click here</button>
													</div>
												</div>												
											</div>
										</div>										
										<div class="row">
											<div class="col-md-8">
												<div class="row">
													<div class="col-md-4"></div>
													<div class="col-md-4"></div>
													<div class="col-md-4"></div>
												</div>
											</div>
											<div class="col-md-4">
												<button type="button"class="btn btn-block btn-outline-warning">Upload</button>
												<button type="button"class="btn btn-block btn-outline-primary">Sharing</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							
						</div>

					</div>
				</div>
<!-- 				modal1_end
				modal -->
			</div> 
		</div>
	</div>
	
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script	src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/assets/basic/js/proflie_slide/classie.js"></script>
	<script	src="./resources/assets/basic/js/proflie_slide/modernizr.custom.js"></script>
	<script src="./resources/assets/tag/js/search_tag.js"></script>
	<script src="./resources/assets/gallery/js/gallery/gallery_classie.js"></script>
	<script	src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js"></script>
	<script	src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>
	<script src="./resources/assets/gallery/js/circluar_layout.js"></script>
	<script src="./resources/assets/gallery/js/gallery/photo_fitter.js"></script>	
</body>
</html>































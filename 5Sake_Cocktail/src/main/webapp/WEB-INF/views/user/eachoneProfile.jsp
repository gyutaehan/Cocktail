<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>5sake's Cocktail</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css?ver=2">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
<link rel="stylesheet"
	href="./resources/assets/basic/css/navbar/navbar.css">
<link rel="stylesheet"
	href="./resources/assets/basic/css/proflie_slide/slide_component.css">
<!--profile-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="./resources/assets/basic/css/profile/default.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
<link rel="stylesheet" href="./resources/assets/tag/css/tag_default.css">

<link rel="stylesheet"
	href="./resources/assets/selfmaking/css/button/button.css">
<link rel="stylesheet" href="./resources/assets/gallery/css/gallery.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
<link rel="stylesheet"
	href="./resources/assets/gallery/css/uploadbutton.css">
<link rel="stylesheet"
	href="./resources/assets/gallery/css/circluar_layout.css">
<!-- eachoneProfile_css 중요 -->
<link rel="stylesheet"
	href="./resources/assets/eachoneProfile/css/eachoneProfile.css">
<link rel="stylesheet"
	href="./resources/assets/eachoneProfile/css/tabMenu.css">
<link rel="stylesheet"
	href="./resources/assets/eachoneProfile/css/eachoneProfile_modalButton.css">
<link rel="stylesheet"
	href="./resources/assets/eachoneProfile/css/eachoneProfile_following_followerModal.css">
<link rel="stylesheet"
	href="./resources/assets/eachoneProfile/css/eachoneProfile_profile_editModal.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans">
<!-- eachoneProfile_css 중요 -->
<style>
.modal-dialog .profile {
	max-width: 500px;
	height: 90%;
}

.modal-content .profile {
	background-color: #fff0;
	border: none;
	display: unset;
}
</style>

</head>

<body>
	<input type="hidden" id="userEmail" name="userEmail"
		value="${user.userEmail }">
	<div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<div class="userprofile_outer">
						<div class="userprofile_inner">
							<!-- profile -->
							<div class="container profile">
								<div class="row profile">
									<div class="col-xs-4 col-sm-2 col-md-offset-2 userpic">

										<div class="p-image">
											<i class="fa fa-camera upload-button"></i> <input
												class="file-upload" type="file" accept="image/*" />
										</div>

										<span class="avatar"> <img class="profile-pic"
											src="${path }${user.savedFilename }" />

										</span>

									</div>
									<div class="col-xs-8 col-sm-10 col-md-8 user-info">
										<div>
											<h2 class="full-name">${user.userEmail }</h2>
											<ul class="mfe">
												<li>
													<button class="btn btn-default" data-toggle="modal"
														data-target="#messageModal">Message</button>
												</li>
												<li>
													<button class="btn btn-default" onclick="followBtn()">Follow</button>
												</li>
												<li>
													<button class="btn btn-default" data-toggle="modal"
														data-target="#profile_editModal">Edit</button>
												</li>
											</ul>
										</div>
										<ul class="ach">
											<li><span class="ach-count">${postNum }</span> <span
												class="ach-label">Posts</span></li>
											<li><span class="ach-count">${followerNum }</span> <span
												class="ach-label" data-toggle="modal"
												data-target="#followerModal">Followers</span></li>
											<li><span class="ach-count">${followNum }</span> <span
												class="ach-label" data-toggle="modal"
												data-target="#followingModal">Following</span></li>
										</ul>
										<div>
											<p class="bio">${user.userSentence }</p>
										</div>

									</div>
								</div>
							</div>
							<!-- profile -->
						</div>
					</div>

				</div>
			</div>

			<!-- message_modal -->
			<div class="modal fade" id="messageModal" tabindex="-1" role="dialog"
				aria-labelledby="chat" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal__close">
						<a href="#" class="modal__icon"> <i class="fa fa-times"
							aria-hidden="true"></i>
						</a> <span class="modal__note">Закрыть</span>
					</div>
					<div class="modal-content chat">
						<div class="modal__main">
							<div class="chatbox">
								<div class="chatbox__row">
									<div class="head">
										<div class="head__avatar avatar avatar_larger">
											<a href="#" class="avatar__wrap"> M </a>
										</div>
										<div class="head__title">MaximModus</div>
									</div>
								</div>
								<div class="chatbox__row chatbox__row_fullheight">
									<div class="chatbox__content">
										<div class="message">
											<div class="message__head">
												<span class="message__note">Princess Murphy</span> <span
													class="message__note">Вчера, 17:00</span>
											</div>
											<div class="message__base">
												<div class="message__avatar avatar">
													<a href="#" class="avatar__wrap"> <img
														class="avatar__img" src="http://placehold.it/35x35"
														width="35" height="35" alt="avatar image">
													</a>
												</div>
												<div class="message__textbox">
													<span class="message__text">Hello, Bogdan! Yes,
														funny smiles</span> <img class="message__smiley"
														src="http://www.pic4ever.com/images/14k8gag.gif"
														border="0">
												</div>
											</div>
										</div>
										<div class="message">
											<div class="message__head">
												<span class="message__note">Princess Murphy</span> <span
													class="message__note">Вчера, 17:00</span>
											</div>
											<div class="message__base">
												<div class="message__avatar avatar">
													<a href="#" class="avatar__wrap"> <img
														class="avatar__img" src="http://placehold.it/35x35"
														width="35" height="35" alt="avatar image">
													</a>
												</div>
												<div class="message__textbox">
													<span class="message__text">Hello, Bogdan! Yes,
														funny smiles</span>
												</div>
											</div>
										</div>
										<div class="message">
											<div class="message__head">
												<span class="message__note">Princess Murphy</span> <span
													class="message__note">Вчера, 17:00</span>
											</div>
											<div class="message__base">
												<div class="message__avatar avatar">
													<a href="#" class="avatar__wrap"> <img
														class="avatar__img" src="http://placehold.it/35x35"
														width="35" height="35" alt="avatar image">
													</a>
												</div>
												<div class="message__textbox">
													<span class="message__text">Hello, Bogdan! Yes,
														funny smiles</span>
												</div>
											</div>
										</div>
										<div class="message">
											<div class="message__head">
												<span class="message__note">Princess Murphy</span> <span
													class="message__note">Вчера, 17:00</span>
											</div>
											<div class="message__base">
												<div class="message__avatar avatar">
													<a href="#" class="avatar__wrap"> <img
														class="avatar__img" src="http://placehold.it/35x35"
														width="35" height="35" alt="avatar image">
													</a>
												</div>
												<div class="message__textbox">
													<span class="message__text">Hello, Bogdan! Yes,
														funny smiles</span>
												</div>
											</div>
										</div>
										<div class="message">
											<div class="message__head">
												<span class="message__note">Princess Murphy</span> <span
													class="message__note">Вчера, 17:00</span>
											</div>
											<div class="message__base">
												<div class="message__avatar avatar">
													<a href="#" class="avatar__wrap"> <img
														class="avatar__img" src="http://placehold.it/35x35"
														width="35" height="35" alt="avatar image">
													</a>
												</div>
												<div class="message__textbox">
													<span class="message__text">Hello, Bogdan! Yes,
														funny smiles</span>
												</div>
											</div>
										</div>
										<div class="message">
											<div class="message__head">
												<span class="message__note">Princess Murphy</span> <span
													class="message__note">Вчера, 17:00</span>
											</div>
											<div class="message__base">
												<div class="message__avatar avatar">
													<a href="#" class="avatar__wrap"> <img
														class="avatar__img" src="http://placehold.it/35x35"
														width="35" height="35" alt="avatar image">
													</a>
												</div>
												<div class="message__textbox">
													<span class="message__text">Hello, Bogdan! Yes,
														funny smiles</span>
												</div>
											</div>
										</div>
										<div class="message">
											<div class="message__head">
												<span class="message__note">Princess Murphy</span> <span
													class="message__note">Вчера, 17:00</span>
											</div>
											<div class="message__base">
												<div class="message__avatar avatar">
													<a href="#" class="avatar__wrap"> <img
														class="avatar__img" src="http://placehold.it/35x35"
														width="35" height="35" alt="avatar image">
													</a>
												</div>
												<div class="message__textbox">
													<span class="message__text">Hello, Bogdan! Yes,
														funny smiles</span>
												</div>
											</div>
										</div>
										<div class="message">
											<div class="message__head">
												<span class="message__note">Princess Murphy</span> <span
													class="message__note">Вчера, 17:00</span>
											</div>
											<div class="message__base">
												<div class="message__avatar avatar">
													<a href="#" class="avatar__wrap"> <img
														class="avatar__img" src="http://placehold.it/35x35"
														width="35" height="35" alt="avatar image">
													</a>
												</div>
												<div class="message__textbox">
													<span class="message__text">Hello, Bogdan! Yes,
														funny smiles</span>
												</div>
											</div>
										</div>
										<div class="message">
											<div class="message__head">
												<span class="message__note">Princess Murphy</span> <span
													class="message__note">Вчера, 17:00</span>
											</div>
											<div class="message__base">
												<div class="message__avatar avatar">
													<a href="#" class="avatar__wrap"> <img
														class="avatar__img" src="http://placehold.it/35x35"
														width="35" height="35" alt="avatar image">
													</a>
												</div>
												<div class="message__textbox">
													<span class="message__text">Hello, Bogdan! Yes,
														funny smiles</span> <img class="message__smiley"
														src="http://www.pic4ever.com/images/245.gif" border="0">
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="chatbox__row">
									<div class="enter">
										<div class="enter__submit">
											<button class="button button_id_submit" type="submit">
												<i class="fa fa-paper-plane" aria-hidden="true"></i>
											</button>
										</div>
										<div class="enter__textarea">
											<textarea name="enterMessage" id="enterMessage" cols="30"
												rows="2" placeholder="Say message..."></textarea>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- message_modal_end -->


			<!-- #followerModal_modal -->
			<div class="modal fade" id="followerModal" tabindex="-1"
				aria-labelledby="output" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div id="output">
							<div class="search">
								<i class="fa fa-fw fa-search"></i> <input id="searchBar"
									type="text">
							</div>
							<c:forEach var="follower" items="${followerList }">
								<div class="row friend" data-toggle="tooltip"
									data-placement="right">
									<img src="${path }${follower.savedFilename}" alt="">
									<div class="title">${follower.userEmail }</div>
									<button class="sendMessage" type="submit"></button>
									<a href="#messageModal" data-toggle="modal"> <i
										class="fa fa-paper-plane"></i>
									</a>
								</div>
							</c:forEach>

						</div>
					</div>
				</div>
			</div>
			<!-- #follwerModal_modal_end -->



			<!-- followingModal_modal -->
			<div class="modal fade" id="followingModal" tabindex="-1"
				aria-labelledby="output" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div id="output">
							<div class="search">
								<i class="fa fa-fw fa-search"></i> <input id="searchBar"
									type="text">
							</div>
							<c:forEach var="follow" items="${followList }">
								<div class="row friend" data-toggle="tooltip"
									data-placement="right">
									<img src="${path }${follow.savedFilename}" alt="">
									<div class="title">${follow.userEmail }</div>
									<button class="sendMessage" type="submit"></button>
									<a href="#messageModal" data-toggle="modal"
										data-dismiss="modal"> <i class="fa fa-paper-plane"></i>
									</a>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!-- followingModal_end -->

			<!-- profile_editModal -->

			<div class="modal fade" id="profile_editModal" tabindex="-1"
				aria-labelledby="output" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">

						<form class="profile_edit_form">
							<h1 class="profile_edit_h1">Edit information</h1>
							<div class="question">
								<input type="text" required /> <label>NickName</label>
							</div>
							<div class="question">
								<input type="text" required /> <label>Instagram ID</label>
							</div>
							<div class="question">
								<input type="text" required /> <label>Your Likes</label>
							</div>

							<button>Submit</button>
						</form>

					</div>
				</div>
			</div>
			<!-- profile_editModal_end -->


			<!-- tabMenu -->
			<div class="wrapper_tabMenu">
				<nav class="tabs_tabMenu">
					<div class="selector_tabMenu"></div>
					<a href="#" class="active_tabMenu">好き酒</a> <a href="#">好き写真</a> <a
						href="#">好き方</a>
				</nav>
			</div>
			<!-- tabMenu_end -->


			<div class="row">
				<div class="col-md-12">
					<div id="grid-gallery" class="grid-gallery">
						<section class="grid-wrap">
							<ul class="grid">
								<li class="grid-sizer"></li>
								<!-- for Masonry column width -->
								<c:forEach var="photo" items="${photoList }">
									<li>
										<figure>
											<img src="${path }${photo.saveFileName}" alt="img01" />
											<figcaption>
												<h3>${photo.title }</h3>
												<p>${photo.contents }</p>
											</figcaption>
										</figure>
									</li>
								</c:forEach>
							</ul>
						</section>
						<section class="slideshow">
							<ul>
								<c:forEach var="photo" items="${photoList }">
									<li>
										<figure>
											<figcaption>
												<h3>${photo.title }</h3>
												<p>${photo.contents }</p>
											</figcaption>
											<img src="${path }${photo.saveFileName}" alt="img01" />
										</figure>
									</li>
								</c:forEach>
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
				<nav class="menu">
					<input type="checkbox" href="#" class="menu-open" name="menu-open"
						id="menu-open" /> <label class="menu-open-button" for="menu-open">
						<span class="hamburger hamburger-1"></span> <span
						class="hamburger hamburger-2"></span> <span
						class="hamburger hamburger-3"></span>
					</label> <a href="#" class="menu-item"> <i class="fa fa-bar-chart"></i>
					</a> <a href="#" class="menu-item"> <i class="fa fa-plus"></i>
					</a>
				</nav>

				<!-- filters -->
				<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
				    <defs>
				      <filter id="shadowed-goo">
				          
				          <feGaussianBlur in="SourceGraphic" result="blur"
						stdDeviation="10" />
				          <feColorMatrix in="blur" mode="matrix"
						values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
				          <feGaussianBlur in="goo" stdDeviation="3" result="shadow" />
				          <feColorMatrix in="shadow" mode="matrix"
						values="0 0 0 0 0  0 0 0 0 0  0 0 0 0 0  0 0 0 1 -0.2"
						result="shadow" />
				          <feOffset in="shadow" dx="1" dy="1" result="shadow" />
				          <feComposite in2="shadow" in="goo" result="goo" />
				          <feComposite in2="goo" in="SourceGraphic" result="mix" />
				      </filter>
				      <filter id="goo">
				          <feGaussianBlur in="SourceGraphic" result="blur"
						stdDeviation="10" />
				          <feColorMatrix in="blur" mode="matrix"
						values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
				          <feComposite in2="goo" in="SourceGraphic" result="mix" />
				      </filter>
				    </defs>
				</svg>
				<!-- modal -->


				<!-- modal1_start -->
				<div id="myModal" class="modal fade" role="dialog">
					<div class="modal-dialog modal-lg">

						<!-- Modal content-->
						<div class="modal-content">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<!--  -->
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">
										<h3 class="text-center text-info">My own cocktail</h3>
										<div class="row">
											<div class="col-md-3">
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
											<div class="col-md-6">

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

											</div>
											<div class="col-md-3">
												<div class="card">
													<h5 class="card-header">Card title</h5>
													<div class="card-body">
														<p class="card-text">Card content</p>
													</div>
													<div class="card-footer">Card footer</div>
												</div>
												<div class="card">
													<h5 class="card-header">Card title</h5>
													<div class="card-body">
														<p class="card-text">Card content</p>
													</div>
													<div class="card-footer">Card footer</div>
												</div>
											</div>
										</div>
										<div class="row">

											<div class="col-md-8">
												<div class="row">
													<div class='container'>
														<div id='app'>
															<div class='tagHere'></div>
															<input type="text" autofocus />
														</div>
													</div>
													<div class='note'>Use Tab to input a tag.</div>
												</div>
											</div>

											<div class="col-md-4">

												<button type="button"
													class="btn btn-block btn-outline-warning">Upload</button>
												<button type="button"
													class="btn btn-block btn-outline-primary">Sharing</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--  -->
						</div>

					</div>
				</div>
				<!-- modal1_end -->
				<!-- modal -->
			</div>
		</div>
	</div>


	<script
		src="./resources/assets/basic/js/proflie_slide/proflieSlide_slideclassie.js"></script>
	<script
		src="./resources/assets/basic/js/proflie_slide/proflieSlide_modernizr.custom.js"></script>
	<script src="./resources/assets/gallery/js/gallery/gallery_classie.js"></script>
	<script
		src="./resources/assets/gallery/js/gallery/gallery_modernizr.custom.js"></script>
	<script
		src="./resources/assets/gallery/js/gallery/imagesloaded.pkgd.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/masonry.pkgd.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
	<script src="./resources/assets/gallery/js/gallery/cbpGridGallery.js"></script>
	<script src="./resources/assets/gallery/js/circluar_layout.js"></script>
	<script src="./resources/assets/eachoneProfile/js/tabMenu.js"></script>

	<!--  MessageModal-->
	<!--  Profile_image change-->
	<script>
		$(document).ready(function() {
			var readURL = function(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();

					reader.onload = function(e) {
						$('.profile-pic').attr('src', e.target.result);
					}

					reader.readAsDataURL(input.files[0]);
				}
			}

			$(".file-upload").on('change', function() {
				readURL(this);
			});

			$(".upload-button").on('click', function() {
				$(".file-upload").click();
			});
		});
	</script>
	<!--  Profile_image change_end -->
	<script type="text/javascript">
		function followBtn() {
			var followUser = document.getElementById('userEmail').value;
			$.ajax({
				method : "get",
				url : "userFollow",
				data : {
					followUser : followUser
				},
				success : function(resp) {
					if (resp == '3') {
						alert("본인은 follow 불가능합니다.");
					} else if (resp == '2') {
						alert("이미 follow 한 사람입니다.");
					} else if (resp == '1') {
						alert("follow 완료 ");
					}
				},
				error : function() {
					alert('err');
				}
			});
		}
	</script>

</body>

</html>
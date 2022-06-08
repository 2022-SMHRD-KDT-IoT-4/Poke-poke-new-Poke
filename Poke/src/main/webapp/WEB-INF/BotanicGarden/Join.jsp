<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Botanic Garden</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by gettemplates.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="gettemplates.co" />

	<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"> -->
	<!-- <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i" rel="stylesheet"> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/join_style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-xs-2">
					<div id="fh5co-logo"><a href="viewMain.do">Botanic</a></div>
				</div>
				<div class="col-md-6 col-xs-6 text-center menu-1">
					<ul>
						<li class="has-dropdown">
							<a href="product.html">식물등록</a>
							<ul class="dropdown">
								<li><a href="single.html">single</a></li>
							</ul>
						</li>
						<li class="has-dropdown">
							<a href="product.html">일정확인</a>
							<ul class="dropdown">
								<li><a href="single.html">single</a></li>
							</ul>
						</li>
						<li><a href="about.html">식물추천</a></li>
						<li class="has-dropdown">
							<a href="services.html">문제해결</a>
							<ul class="dropdown">
								<li><a href="#">Web Design</a></li>
								<li><a href="#">eCommerce</a></li>
								<li><a href="#">Branding</a></li>
								<li><a href="#">API</a></li>
							</ul>
						</li>
						<li><a href="contact.html">커뮤니티</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-xs-4 text-right hidden-xs menu-2">
					<ul>
						<li><a href="#">LOGIN</a></li>
					</ul>
				</div>
			</div>
			
		</div>
	</nav>
	
	<aside id="fh5co-hero" class="js-fullheight">
		<div class="flexslider js-fullheight">
			<ul class="slides">
		   	<li>
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="join">
					<!-- 중복확인 하기 -->
					<!-- <form action="MainLogin.html" method="post">
						<div class="textForm"> 
						<input type="text" class="join_id" name="id" placeholder="아이디를 입력하세요">
						<button id="btn_id_check" onclick="btn_id_check()">중복확인</button>
						</div>
						<br><br><br>
						<div class="textForm"> 
						<input type="password" class="join_pw" name="password" placeholder="비밀번호를 입력하세요">
						</div>
						<br><br><br>
						<div class="textForm"> 
						<input type="password" class="join_pw_check" name="password" placeholder="비밀번호를 입력하세요">
						</div>
						<br><br><br>
						<div class="textForm"> 
						<input type="text" class="join_nickname" name="nickname" placeholder="닉네임을 입력하세요">
						<button id="btn_nickname_check" onclick="btn_nickname_check()">중복확인</button>
						</div>
						<br><br><br>
						<div class="textForm"> 
						<input type="email" class="join_email" name="email" placeholder="이메일을 입력하세요">
						</div>
						<br><br><br>
						<input type="submit" name="Join_success" value="회원가입">
						<button id="btn_id_check" onclick="btn_id_check()">취소</button>
					</form> -->

					<div class="join">
						<div class="container">
						  <div class="form_txtInput">
							<h2 class="sub_tit_txt">회원가입</h2>
							<div class="join_form">
							<form action="registerUser.do" method="post">
							  <table>
								<colgroup>
								  <col width="60%"/>
								  <col width="auto"/>
								</colgroup>
								<tbody>
								  <tr>
									<th><span>아이디</span></th>
									<td colspan="2"><input type="text" name="id" class="id" placeholder="아이디를 입력하세요.">
									<font id = "checkId" size="2"></font>
									</td>
								  </tr>
								  <tr>
									<th><span>비밀번호</span></th>
									<td><input type="password" name="password" class="pw" id="pw1" placeholder="비밀번호를 입력해주세요."></td>
								  </tr>
								  <tr>
									<th><span>비밀번호 확인</span></th>
									<td colspan="2">
										<input type="password" name="password" class="pw" id="pw2" placeholder="비밀번호를 확인하세요">
										<font id = "checkPw" size="2"></font>
									</td>
								  </tr>
								  <tr>
									<th><span>닉네임</span></th>
									<td><input type="text" name="nickname" placeholder="닉네임을 입력하세요."></td>
								  </tr>
								  <tr>
									<th><span>이메일</span></th>
									<td><input type="text" name="email" placeholder="이메일을 입력해주세요."></td>
								  </tr>
								</tbody>
							  </table>
							<div class="btn_wrap">
							  <input type="submit" value="회원가입">
							</div>
						  </div> <!-- form_txtInput E -->
						</div><!-- content E-->
					  </div> <!-- container E -->
					 </form>












					</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>


	<footer id="fh5co-footer" role="contentinfo">
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-4 fh5co-widget">
					<h3>Shop.</h3>
					<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
					<ul class="fh5co-footer-links">
						<li><a href="#">About</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
					<ul class="fh5co-footer-links">
						<li><a href="#">Shop</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Testimonials</a></li>
						<li><a href="#">Handbook</a></li>
						<li><a href="#">Held Desk</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
					<ul class="fh5co-footer-links">
						<li><a href="#">Find Designers</a></li>
						<li><a href="#">Find Developers</a></li>
						<li><a href="#">Teams</a></li>
						<li><a href="#">Advertise</a></li>
						<li><a href="#">API</a></li>
					</ul>
				</div>
			</div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy; 2018 Free HTML5. All Rights Reserved.</small> 
						<small class="block">Designed by <a href="http://freehtml5.co/" target="_blank">FreeHTML5.co</a> Demo Images: <a href="http://blog.gessato.com/" target="_blank">Gessato</a> &amp; <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>
					</p>
					<p>
						<ul class="fh5co-social-icons">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

    
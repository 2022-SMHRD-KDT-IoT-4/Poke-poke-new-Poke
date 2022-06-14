<%@page import="com.poke.domain.UserInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Shop &mdash; Free Website Template, Free HTML5 Template by gettemplates.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by gettemplates.co" />
	<meta name="keywords"
		content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
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
	<meta property="og:title" content="" />
	<meta property="og:image" content="" />
	<meta property="og:url" content="" />
	<meta property="og:site_name" content="" />
	<meta property="og:description" content="" />
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
	<link rel="stylesheet" href="css/style2.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		PlantList();
	});
	
	
	<% UserInfoVO vo =(UserInfoVO)session.getAttribute("user");%>
	
	
	function palntInsert(){
		var fPlant = $("#Plant").serialize();
		$.ajax({
			
			url : 'plantInsert.do',	
			type : 'post',
			data : fPlant,
			success : function(){
				document.location.href = document.location.href;
			},
			error : function (){
				alert("error")
			}
		});
	}
	
	function PlantList(){
		$.ajax({
			url : 'palntList.do',
			type : 'post',
			dataType : "json",
			success : function(data){
				console.log(data);
				let list = "";
				list += "<input class='ad' list='plant_list' name='plant_name' id='plant_name' > ";
				list += "<datalist id='plant_list' display = 'none'>";
				$.each(data, function(index,res2){

				
					
					list += "<option value = "+data[index].plant_name+" label = '물주기 : "+data[index].cycle+"일'>";
				})
				list+= "<option>추가</option>";
				list+= "</datalist>"
				
				$("#plantList").html(list);
			},
			error : function(){
				alert("error")
			}
		});
	}

	
	
	
	</script>	
	

</head>

<body>

	<div class="fh5co-loader"></div>

	<div id="page">
		<nav class="fh5co-nav" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-xs-2">
						<div id="fh5co-logo"><a href="Main.html">Botanic Garden</a></div>
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
							<!-- <li>🌻닉네임</a></li> -->
							<li class="has-dropdown">
							<li><a>🌻닉네임</a></li>
							<li><a href="#">로그아웃</a></li>
							<li><a href="#">마이페이지</a></li>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</nav>



		<!-- Search Start -->
		<form id = "Plant">

		
		<div class="plant_reg">
			<table id="plant_reg_add">
				<tr>
					<td> <h3>식물 추가</h3> </td>
					<td> <h3>애칭</h3> </td>
					<td> <h3>마지막으로 물 준 날</h3> </td>
					
				</tr>

				
				<tr class="submit_add">
					<td id = "plantList"></td> 
					<td><input class="ad" type="text" name="plant_nickname" id = "plant_nickname" placeholder="애칭을 입력해주세요."></td>
					<td><input class="ad" type="date" id="plant_lastdate" name ="plant_lastdate"></td>
					<input type="hidden" name = 'id' value='<%=vo.getId() %>'>
					
				</tr>
				
			</table>

			<!-- + 눌렀을 때 아래 추가한 값이 계속 나타날 수 있도록 설정해야 함 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->

			<div class="btn_Plant_reg">
				<input id = "btn_plnat_insert" type="button" onclick ="palntInsert()" value="🌱등록">
			 </div>
	   
			 
	   </div>
 
	</form>



		<!-- footer -->
		<footer id="fh5co-footer" role="contentinfo">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-4 fh5co-widget">
						<h3>Shop.</h3>
						<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta
							adipisci architecto culpa amet.</p>
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
							<small class="block">Designed by <a href="http://freehtml5.co/"
									target="_blank">FreeHTML5.co</a> Demo Images: <a href="http://blog.gessato.com/"
									target="_blank">Gessato</a> &amp; <a href="http://unsplash.co/"
									target="_blank">Unsplash</a></small>
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
	<script src="js/main2.js"></script>
	<script src="js/main3.js"></script>

</body>

</html>
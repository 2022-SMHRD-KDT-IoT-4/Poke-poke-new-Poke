;(function () {
	
	'use strict';

	var mobileMenuOutsideClick = function() {

		$(document).click(function (e) {
	    var container = $("#fh5co-offcanvas, .js-fh5co-nav-toggle");
	    if (!container.is(e.target) && container.has(e.target).length === 0) {

	    	if ( $('body').hasClass('offcanvas') ) {

    			$('body').removeClass('offcanvas');
    			$('.js-fh5co-nav-toggle').removeClass('active');
				
	    	}
	    
	    	
	    }
		});

	};


	var offcanvasMenu = function() {

		$('#page').prepend('<div id="fh5co-offcanvas" />');
		$('#page').prepend('<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle fh5co-nav-white"><i></i></a>');
		var clone1 = $('.menu-1 > ul').clone();
		$('#fh5co-offcanvas').append(clone1);
		var clone2 = $('.menu-2 > ul').clone();
		$('#fh5co-offcanvas').append(clone2);

		$('#fh5co-offcanvas .has-dropdown').addClass('offcanvas-has-dropdown');
		$('#fh5co-offcanvas')
			.find('li')
			.removeClass('has-dropdown');

		// Hover dropdown menu on mobile
		$('.offcanvas-has-dropdown').mouseenter(function(){
			var $this = $(this);

			$this
				.addClass('active')
				.find('ul')
				.slideDown(500, 'easeOutExpo');				
		}).mouseleave(function(){

			var $this = $(this);
			$this
				.removeClass('active')
				.find('ul')
				.slideUp(500, 'easeOutExpo');				
		});


		$(window).resize(function(){

			if ( $('body').hasClass('offcanvas') ) {

    			$('body').removeClass('offcanvas');
    			$('.js-fh5co-nav-toggle').removeClass('active');
				
	    	}
		});
	};


	var burgerMenu = function() {

		$('body').on('click', '.js-fh5co-nav-toggle', function(event){
			var $this = $(this);


			if ( $('body').hasClass('overflow offcanvas') ) {
				$('body').removeClass('overflow offcanvas');
			} else {
				$('body').addClass('overflow offcanvas');
			}
			$this.toggleClass('active');
			event.preventDefault();

		});
	};

	var contentWayPoint = function() {
		var i = 0;
		$('.animate-box').waypoint( function( direction ) {

			if( direction === 'down' && !$(this.element).hasClass('animated-fast') ) {
				
				i++;

				$(this.element).addClass('item-animate');
				setTimeout(function(){

					$('body .animate-box.item-animate').each(function(k){
						var el = $(this);
						setTimeout( function () {
							var effect = el.data('animate-effect');
							if ( effect === 'fadeIn') {
								el.addClass('fadeIn animated-fast');
							} else if ( effect === 'fadeInLeft') {
								el.addClass('fadeInLeft animated-fast');
							} else if ( effect === 'fadeInRight') {
								el.addClass('fadeInRight animated-fast');
							} else {
								el.addClass('fadeInUp animated-fast');
							}

							el.removeClass('item-animate');
						},  k * 200, 'easeInOutExpo' );
					});
					
				}, 100);
				
			}

		} , { offset: '85%' } );
	};


	var dropdown = function() {

		$('.has-dropdown').mouseenter(function(){

			var $this = $(this);
			$this
				.find('.dropdown')
				.css('display', 'block')
				.addClass('animated-fast fadeInUpMenu');

		}).mouseleave(function(){
			var $this = $(this);

			$this
				.find('.dropdown')
				.css('display', 'none')
				.removeClass('animated-fast fadeInUpMenu');
		});

	};


	var tabs = function() {

		// Auto adjust height
		$('.fh5co-tab-content-wrap').css('height', 0);
		var autoHeight = function() {

			setTimeout(function(){

				var tabContentWrap = $('.fh5co-tab-content-wrap'),
					tabHeight = $('.fh5co-tab-nav').outerHeight(),
					formActiveHeight = $('.tab-content.active').outerHeight(),
					totalHeight = parseInt(tabHeight + formActiveHeight + 90);

					tabContentWrap.css('height', totalHeight );

				$(window).resize(function(){
					var tabContentWrap = $('.fh5co-tab-content-wrap'),
						tabHeight = $('.fh5co-tab-nav').outerHeight(),
						formActiveHeight = $('.tab-content.active').outerHeight(),
						totalHeight = parseInt(tabHeight + formActiveHeight + 90);

						tabContentWrap.css('height', totalHeight );
				});

			}, 100);
			
		};

		autoHeight();


		// Click tab menu
		$('.fh5co-tab-nav a').on('click', function(event){
			
			var $this = $(this),
				tab = $this.data('tab');

			$('.tab-content')
				.addClass('animated-fast fadeOutDown');

			$('.fh5co-tab-nav li').removeClass('active');
			
			$this
				.closest('li')
					.addClass('active')

			$this
				.closest('.fh5co-tabs')
					.find('.tab-content[data-tab-content="'+tab+'"]')
					.removeClass('animated-fast fadeOutDown')
					.addClass('animated-fast active fadeIn');


			autoHeight();
			event.preventDefault();

		}); 
	};

	var goToTop = function() {

		$('.js-gotop').on('click', function(event){
			
			event.preventDefault();

			$('html, body').animate({
				scrollTop: $('html').offset().top
			}, 500, 'easeInOutExpo');
			
			return false;
		});

		$(window).scroll(function(){

			var $win = $(window);
			if ($win.scrollTop() > 200) {
				$('.js-top').addClass('active');
			} else {
				$('.js-top').removeClass('active');
			}

		});
	
	};


	// Loading page
	var loaderPage = function() {
		$(".fh5co-loader").fadeOut("slow");
	};

	var counter = function() {
		$('.js-counter').countTo({
			 formatter: function (value, options) {
	      return value.toFixed(options.decimals);
	    },
		});
	};

	var counterWayPoint = function() {
		if ($('#fh5co-counter').length > 0 ) {
			$('#fh5co-counter').waypoint( function( direction ) {
										
				if( direction === 'down' && !$(this.element).hasClass('animated') ) {
					setTimeout( counter , 400);					
					$(this.element).addClass('animated');
				}
			} , { offset: '90%' } );
		}
	};

	var sliderMain = function() {
		
	  	$('#fh5co-hero .flexslider').flexslider({
			animation: "fade",
			slideshowSpeed: 5000,
			directionNav: true,
			start: function(){
				setTimeout(function(){
					$('.slider-text').removeClass('animated fadeInUp');
					$('.flex-active-slide').find('.slider-text').addClass('animated fadeInUp');
				}, 500);
			},
			before: function(){
				setTimeout(function(){
					$('.slider-text').removeClass('animated fadeInUp');
					$('.flex-active-slide').find('.slider-text').addClass('animated fadeInUp');
				}, 500);
			}

	  	});

	  	$('#fh5co-hero .flexslider .slides > li').css('height', $(window).height());	
	  	$(window).resize(function(){
	  		$('#fh5co-hero .flexslider .slides > li').css('height', $(window).height());	
	  	});

	};

	var testimonialCarousel = function(){
		
		var owl = $('.owl-carousel-fullwidth');
		owl.owlCarousel({
			items: 1,
			loop: true,
			margin: 0,
			nav: false,
			dots: true,
			smartSpeed: 800,
			autoHeight: true
		});

	};

	
	$(function(){
		mobileMenuOutsideClick();
		offcanvasMenu();
		burgerMenu();
		contentWayPoint();
		dropdown();
		tabs();
		goToTop();
		loaderPage();
		counterWayPoint();
		sliderMain();
		testimonialCarousel();
	});


}());


/** ?????? ?????? */

/* ???????????? ????????? ?????? ????????? */
$(document).ready(() => {
	document.getElementById("btn_logout").onclick = () => {
		document.logout.submit();
	}
});


/* ????????? ??? ???????????? ?????? ?????? */
$('.pw').keyup(() => {
	let pw1 = $("#pw1").val();
	let pw2 = $("#pw2").val();

	if(pw1 != "" || pw2 != ""){
		if(pw1 == pw2){
			$("#checkPw").html('??????????????? ???????????????.');
			$("#checkPw").attr('color', 'green');
		}else {
			$("#checkPw").html('??????????????? ???????????? ????????????.');
			$("#checkPw").attr('color', 'red');
		}
	}
});

// ???????????? ?????? ??? ?????? ??????
$('.changePw').keyup(() => {
	let changePw1 = $("#changePw1").val();
	let changePw2 = $("#changePw2").val();

	if(changePw1 != "" || changePw2 != ""){
		if(changePw1 == changePw2){
			$("#checkChangePw").html('??????????????? ???????????????.');
			$("#checkChangePw").attr('color', 'green');
		}else {
			$("#checkChangePw").html('??????????????? ???????????? ????????????.');
			$("#checkChangePw").attr('color', 'red');
		}
	}
});



/* ???????????? ?????? ?????? ??? alert??? ????????? */
/* ????????? ??????????????? ????????????  ????????????,,???_??? */

// ????????? ?????? ??????
let pop_nick_change = document.querySelector(".pop_nick_change"); 
let trigger2 = document.querySelector("#trigger2"); 
let closeButton1 = document.querySelector(".close-button1"); 
let cancelButton1 = document.querySelector("#cancel1")


function togglepop_nick_change() { 
    pop_nick_change.classList.toggle("show-modal"); 
 }

function windowOnClick(event) { 
 if (event.target === pop_nick_change) { 
     togglepop_nick_change(); 
 } 
}

trigger2.addEventListener("click", togglepop_nick_change); 
closeButton1.addEventListener("click", togglepop_nick_change); 
cancel1.addEventListener("click", togglepop_nick_change); 
window.addEventListener("click", windowOnClick); 

$('.changeNickname').focusout(()=>{
	let changeNickname = $('.changeNickname').val(); 

	$.ajax({
		url :  "????????? ?????????????????? ????????????",
		type : "post",
		data : {changeNickname: changeNickname}, 
		dataType : 'json',
		success : function(result) {
			if(result == 0) {
				$('#checkNickname').html('?????? ???????????? ??????????????????.');
				$('#checkNickname').attr('color', 'red');
			}else {
				$('#checkNickname').html('????????? ??? ?????? ??????????????????.');
				$('#checkNickname').attr('color', 'green');
			}
		},
		error : function(){
			alert("error");
		}
	})
})



/* ???????????? ?????? ?????? */

let modal = document.querySelector(".pop_pw_change"); 
let trigger = document.querySelector("#trigger"); 
let closeButton = document.querySelector(".close-button"); 
let cancelButton = document.querySelector("#cancel");


function toggleModal() { 
    modal.classList.toggle("show-modal"); 
 }

function windowOnClick(event) { 
 if (event.target === modal) { 
     toggleModal(); 
 } 
}

trigger.addEventListener("click", toggleModal); 
closeButton.addEventListener("click", toggleModal); 
cancel.addEventListener("click", toggleModal); 
window.addEventListener("click", windowOnClick); 


// ????????? ?????? ??????
let pop_email_change = document.querySelector(".pop_email_change"); 
let trigger3 = document.querySelector("#trigger3"); 
let closeButton2 = document.querySelector(".close-button2"); 
let cancelButton2 = document.querySelector("#cancel2")


function togglepop_email_change() { 
    pop_email_change.classList.toggle("show-modal"); 
 }

function windowOnClick(event) { 
 if (event.target === pop_email_change) { 
     togglepop_email_change(); 
 } 
}

trigger3.addEventListener("click", togglepop_email_change); 
closeButton2.addEventListener("click", togglepop_email_change); 
cancel2.addEventListener("click", togglepop_email_change); 
window.addEventListener("click", windowOnClick); 

$('.changeNickname').focusout(()=>{
	let changeNickname = $('.changeNickname').val(); 

	$.ajax({
		url :  "????????? ?????????????????? ????????????",
		type : "post",
		data : {changeEmail: changeEmail}, 
		dataType : 'json',
		success : function(result) {
			if(result == 0) {
				$('#checkEmail').html('?????? ???????????? ??????????????????.');
				$('#checkEmail').attr('color', 'red');
			}else {
				$('#checkEmail').html('????????? ??? ?????? ??????????????????.');
				$('#checkEmail').attr('color', 'green');
			}
		},
		error : function(){
			alert("error");
		}
	})
})

$(document).ready(function () {
	//Global
	headerMapping();
	headerMobileToggle();
	tabV1Init();

	//Trang chu
	bannerHomeInit();

	//Project detail
	projectDetailSliderInit();

	//HomePartner
	homePartnerInit();

	//Partner
	partnerSliderInit();

	clearBox();

	$('.apply-now').on('click', function () {
		$('.form-apply').slideToggle();
	});
	$('[fancybox-gallery]').fancybox({
		loop : true,
		thumbs : {
			autoStart : true,
			axis: 'y',
		},
		afterShow: function() {
			this.thumb = $('.fancybox-thumbs').appendTo('.fancybox-stage'),
			this.nav = $('.fancybox-navigation').appendTo('.fancybox-content'),
			this.count = $('.fancybox-infobar').appendTo('.fancybox-stage'),
			this.toolbar = $('.fancybox-toolbar').appendTo('.fancybox-stage')
			if (!$('.fancybox-infobar h2').length) {
				var captionHtml = "<h2>" + this.opts.caption + "</h2>"
				$(captionHtml).prependTo('.fancybox-infobar')	
			}
		}
})
});

function headerMapping() {
	try {
		var moveSearch = new MappingListener({
			selector: 'header .Module-141',
			mobileWrapper: 'header .header-mobile',
			mobileMethod: 'appendTo',
			desktopWrapper: 'header .Module-143',
			desktopMethod: 'insertAfter',
			breakpoint: 992,
		}).watch()
		var moveNav = new MappingListener({
			selector: 'header .Module-140',
			mobileWrapper: 'header .header-mobile',
			mobileMethod: 'appendTo',
			desktopWrapper: 'header .logo',
			desktopMethod: 'insertAfter',
			breakpoint: 992,
		}).watch()
	} catch (error) {

	}
}

function headerMobileToggle() {
	$('body').on('click', 'header .btn-header', function () {
		$('header').toggleClass('active');
	});
	$('body').on('click', 'header .header-backdrop', function () {
		$('header').removeClass('active');
	});
}

function activeMenuHeader() {
	$('header nav a').removeClass('active');
	$('header nav a').on('click', function() {
		$(this).addClass('active');
	})
}

function bannerHomeInit() {
	return new Swiper('.banner-trangchu .swiper-container', {
		slidesPerView: 1,
		spaceBetween: 0,
		lazy: true,
		pagination: {
			el: '.swiper-pagination',
			type: 'bullets',
			clickable: true
		}
	});
}

function tabV1Init() {
	if ($(window).outerWidth() >= 992) {
		$('body').on('click', '.lapthanh-tab-v1 .desktop a', function () {
			var tabId = $(this).attr('data-tab');

			$(this).siblings().removeClass('active');
			$(this).addClass('active');

			$(tabId).siblings().removeClass('active');
			$(tabId).addClass('active');
		});
	} else {
		$('body').on('change', '.lapthanh-tab-v1 .mobile select', function () {
			var tabId = $(this).val();

			$(tabId).siblings().removeClass('active');
			$(tabId).addClass('active');
		});
	}
}


function projectDetailSliderInit() {
	return new Swiper('.project-detail .swiper-container', {
		slidesPerView: 3,
		spaceBetween: 30,
		navigation: {
			nextEl: '.project-detail .btn-next',
			prevEl: '.project-detail .btn-prev',
		},
		breakpoints: {
			992: {
				slidesPerView: 2
			},
			768: {
				slidesPerView: 1.5,
				centeredSlides: true,
				navigation: false,
				initialSlide: 1
			}
		}
	});
}
function homePartnerInit() {
	return new Swiper('.home-partner .swiper-container', {
		slidesPerView: 6,
		slidesPerColumn: 1,
		spaceBetween: 30,
		navigation: {
			nextEl: '.home-partner .btn-next',
			prevEl: '.home-partner .btn-prev',
		},
		breakpoints: {
			992: {
				slidesPerView: 4,
			},
			768: {
				slidesPerView: 3,
			},
			576: {
				slidesPerView: 2,
			}
		}
	});
}
function partnerSliderInit() {
	return new Swiper('.partner .swiper-container', {
		slidesPerView: 6,
		slidesPerColumn: 3,
		spaceBetween: 30,
		navigation: {
			nextEl: '.partner .btn-next',
			prevEl: '.partner .btn-prev',
		},
		breakpoints: {
			992: {
				slidesPerView: 4,
				slidesPerColumn: 3
			},
			768: {
				slidesPerView: 3,
				slidesPerColumn: 3
			},
			576: {
				slidesPerView: 2,
				slidesPerColumn: 3
			}
		}
	});
}
function clearBox() {
	$('.contact .wrap-form div .RadCaptcha .rcRefreshImage').empty();
	$('.contact .wrap-form div .RadCaptcha .rcRefreshImage').on('click', function() {
		$(this).empty();
	})
}
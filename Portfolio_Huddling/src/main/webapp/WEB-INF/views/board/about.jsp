<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/board_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 헤더 부트스트랩-->
<link href="/resources/main/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/style.css" rel='stylesheet' type='text/css' />
<link href="/resources/main/css/font-awesome.css" rel="stylesheet"> 
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<style>

* {
  margin: 0;
  padding: 0;
}

.real-fluid {
  padding-left: 0;
  padding-right: 0;
}

.container {
  max-width: 1200px;
}

html,
body {
  height: 100%;
}

body {
  /* background: #eeeeee; */
  font-family: 'Overpass', sans-serif;
}

.slick-slider {
  -webkit-user-select: text !important;
  -moz-user-select: text !important;
  -ms-user-select: text !important;
  user-select: text !important;
}

.underlined-link {
  color: #757575;
  font-size: 14px;
  letter-spacing: 2.8px;
  position: relative;
  padding-bottom: 12px;
  text-decoration: none !important;
  outline: none !important;
}

.underlined-link-wrapper {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
}

.underlined-link:hover {
  color: inherit;
}

.underlined-link:hover::after {
  width: 100%;
  background: #757575;
}

.underlined-link::after {
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  width: 80%;
  height: 1px;
  background: #ebebeb;
  transition: .1s ease-in-out;
}

.section-title {
  padding-left: 0;
  position: relative;
  display: -ms-grid;
  display: grid;
  -ms-grid-columns: 37px 1fr;
  grid-template-columns: 37px 1fr;
  grid-row-gap: 15px;
  overflow: hidden;
  max-width: 100%;
}

.section-title-content {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  margin-left: 20px;
  width: 100%;
}

.section-title-content .title {
  font-size: 24px;
  letter-spacing: 2.4px;
  color: #1f8868;
  font-weight: 900;
  line-height: 1.2;
  margin: 0;
}

.section-title-content .title.dark {
  color: #333333;
}

.section-title-content .title.light {
  color: #ffffff;
}

.section-title-content span.subtitle {
  font-size: 12px;
  color: #b4b4b4;
  letter-spacing: 2.4px;
  font-weight: 300;
  margin-top: 10px;
  line-height: 1;
}

.section-title-btn {
  margin-left: auto;
  position: relative;
  width: 100%;
  grid-column: 1 / -1;
}

.section-title-btn .app-btn {
  font-size: 12px;
  font-weight: 300;
  letter-spacing: 2.4px;
  height: 50px;
}

ul.slick-dots {
  margin: 0;
  margin-top: 65px;
  padding: 0;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
}

ul.slick-dots li {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  width: 8px;
  height: 8px;
  background: #cfcfcf;
  border-radius: 50%;
  transition: .2s ease-in-out;
}

ul.slick-dots li.slick-active {
  width: 30px;
  border-radius: 4px;
  background: #1f8868;
}

ul.slick-dots li + li {
  margin-left: 10px;
}

ul.slick-dots li button {
  display: none;
}



.title-rectangle {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  background: transparent;
  width: 37px;
  height: 50px;
  -webkit-flex-shrink: 0;
  -ms-flex-negative: 0;
  flex-shrink: 0;
}

.title-rectangle.title-rectangle--white {
  border: 5px solid #fff;
}

.title-rectangle.title-rectangle--white.fill {
  background: #fff;
}

.title-rectangle.title-rectangle--primary {
  border-width: 5px;
  border-style: solid;
  border-color: #1f8868;
}

.title-rectangle.title-rectangle--primary.fill {
  background: #1f8868;
}

.hero-wrapper {
  background: #fff;
  position: relative;
  overflow: hidden;
  height: auto;
}

.hero-wrapper .hero-container {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  width: 100%;
  height: 100%;
  margin-left: auto;
  max-width: 100%;
  -webkit-flex-direction: column-reverse;
  -ms-flex-direction: column-reverse;
  flex-direction: column-reverse;
}

.hero-wrapper .hero-container .hero-left-wrapper {
  height: 100%;
  width: 100%;
  margin-top: 75px;
  padding: 0 20px 20px 20px;
}

.hero-wrapper .hero-container .hero-left-carousel {
  height: 100%;
}

.hero-wrapper .hero-container .hero-left-carousel .slick-list,
.hero-wrapper .hero-container .hero-left-carousel .slick-track {
  height: 100%;
}

.hero-wrapper .hero-container .hero-left-carousel-item {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-direction: column;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  max-width: 100%;
  outline: none !important;
  margin-right: unset;
  overflow: hidden;
}

.hero-wrapper .hero-container .hero-left-carousel-item span.title-small {
  display: block;
  font-size: 14px;
  color: #757575;
  margin-bottom: 10px;
  letter-spacing: 2.8px;
  line-height: 1;
}

.hero-wrapper .hero-container .hero-left-carousel-item span.title {
  display: block;
  color: #FF8224;
  font-weight: 900;
  line-height: .9;
  letter-spacing: 2px;
  font-size: 45px;
  margin-bottom: 20px;
  word-break: break-all;
}

.hero-wrapper .hero-container .hero-left-carousel-item span.title::first-letter {
  margin-left: unset;
}

.hero-wrapper .hero-container .hero-left-carousel-item span.subtitle {
  display: block;
  color: #757575;
  font-weight: 700;
  line-height: 1;
  letter-spacing: 4.4px;
  margin-bottom: 20px;
  font-size: 16px;
}

.hero-wrapper .hero-container .hero-left-carousel-item p.description {
  display: block;
  font-size: 14px;
  color: #757575;
  margin: 0;
  font-weight: 300;
  letter-spacing: 0.28px;
  margin-bottom: 30px;
}

.hero-wrapper .hero-container .hero-right {
  height: 100%;
  position: relative;
  z-index: 1;
  width: 100%;
}

.hero-wrapper .hero-container .hero-right .hero-carousel-navigation {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  position: absolute;
  background: #ffffff;
  box-shadow: 0px 7px 59px 0 rgba(0, 0, 0, 0.1);
  left: 0;
  z-index: 1;
  width: 100%;
  height: auto;
  -webkit-transform: none;
  -ms-transform: none;
  transform: none;
  padding: 15px 10px;
  -webkit-flex-direction: row;
  -ms-flex-direction: row;
  flex-direction: row;
  top: 100%;
}

.hero-wrapper .hero-container .hero-right .hero-carousel-navigation p.text {
  margin: 0;
  -webkit-flex-grow: 1;
  -ms-flex-positive: 1;
  flex-grow: 1;
  color: #757575;
  line-height: normal;
  -webkit-writing-mode: unset;
  -ms-writing-mode: unset;
  writing-mode: unset;
  -webkit-transform: none;
  -ms-transform: none;
  transform: none;
  font-size: 13px;
  display: inline;
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
  text-align: center;
  margin-top: auto;
  margin-bottom: auto;
  padding: 0 5px;
}

.hero-wrapper .hero-container .hero-right .hero-carousel-navigation p.text span {
  color: #1f8868;
  margin: 0 5px;
}

.hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn {
  display: inline-block;
  text-align: center;
  background: none;
  border: 0;
  outline: none !important;
  position: relative;
  cursor: pointer;
}

.hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn.prev {
  -webkit-order: -1;
  -ms-flex-order: -1;
  order: -1;
}

.hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn:hover i {
  color: #1f8868;
}

.hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn:nth-of-type(1) {
  margin-top: unset;
}

.hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn:nth-of-type(2) {
  margin-top: 0;
  padding-top: 0;
}

.hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn:nth-of-type(2)::before {
  display: none;
  content: '';
  position: absolute;
  top: 0;
  left: 15px;
  width: 70px;
  height: 1px;
  background: #efefef;
}

.hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn i {
  color: #d4d4d4;
  font-size: 1.5em;
  transition: .1s ease-in-out;
}

.hero-wrapper .hero-container .hero-right-carousel {
  height: 250px;
}

.hero-wrapper .hero-container .hero-right-carousel .slick-list,
.hero-wrapper .hero-container .hero-right-carousel .slick-track {
  height: 100%;
}

.hero-wrapper .hero-container .hero-right-carousel-item {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  position: relative;
}


.hero-wrapper .hero-container .hero-right-carousel-item img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.hero-rectangle {
  position: absolute;
  background: transparent;
  border-width: 20px;
  border-style: solid;
  z-index: 1;
  pointer-events: none;
  display: none;
}

.hero-rectangle--black {
  border-color: #002266;
}

.hero-rectangle--primary {
  border-color: #FF9436;
}

.hero-rectangle--big {
  width: 560px;
  height: 260px;
  left: -20px;
  top: -25%;
}

.hero-rectangle--small {
  width: 230px;
  height: 260px;
  left: calc(50% - 295px);
  bottom: -25%;
}


  .hero-wrapper {
    height: 500px;
  }

  .hero-wrapper .hero-container {
    -webkit-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
  }

  .hero-wrapper .hero-container .hero-left-wrapper {
    margin-top: unset;
    width: 60%;
    padding-right: 50px;
  }

  .hero-wrapper .hero-container .hero-left-carousel-item {
    margin-right: 15px;
  }

  .hero-wrapper .hero-container .hero-left-carousel-item span.title {
    margin-bottom: 30px;
    font-size: 80px;
  }

  .hero-wrapper .hero-container .hero-left-carousel-item span.title::first-letter {
    margin-left: -.07em;
  }

  .hero-wrapper .hero-container .hero-left-carousel-item span.subtitle {
    font-size: 18px;
  }

  .hero-wrapper .hero-container .hero-left-carousel-item p.description {
    margin-bottom: 70px;
  }

  .hero-wrapper .hero-container .hero-right {
    width: 40%;
  }

  .hero-wrapper .hero-container .hero-right .hero-carousel-navigation {
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    width: 100px;
    -webkit-transform: translateX(-50%) translateY(-50%);
    -ms-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
    padding: 0 0 35px 0;
    top: 50%;
    height: 90%;
  }

  .hero-wrapper .hero-container .hero-right .hero-carousel-navigation p.text {
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    font-size: 14px;
    line-height: 100px;
    -webkit-writing-mode: vertical-lr;
    -ms-writing-mode: tb-lr;
    writing-mode: vertical-lr;
    -webkit-transform: rotate(180deg);
    -ms-transform: rotate(180deg);
    transform: rotate(180deg);
    text-align: unset;
    margin-top: unset;
    margin-bottom: unset;
    padding: unset;
    overflow: unset;
  }

  .hero-wrapper .hero-container .hero-right .hero-carousel-navigation p.text span {
    margin: 10px 0;
  }

  .hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn.prev {
    -webkit-order: unset;
    -ms-flex-order: unset;
    order: unset;
  }

  .hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn:nth-of-type(1) {
    margin-top: auto;
  }

  .hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn:nth-of-type(2) {
    margin-top: 20px;
    padding-top: 20px;
  }

  .hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn:nth-of-type(2)::before {
    display: block;
  }

  .hero-wrapper .hero-container .hero-right-carousel {
    height: 100%;
  }

}

@media screen and (min-width: 768px) and (min-width: 992px) {
  .hero-wrapper .hero-container .hero-right .hero-carousel-navigation {
    height: 550px;
  }
}

@supports ((display: -ms-grid) or (display: grid)) {
  .hero-wrapper {
    height: 600px;
  }

  .hero-wrapper .hero-container .hero-left-wrapper {
    width: 50%;
  }

  .hero-wrapper .hero-container .hero-left-carousel-item {
    margin-right: 5px;
  }

  .hero-wrapper .hero-container .hero-left-carousel-item span.title {
    font-size: 100px;
  }

  .hero-wrapper .hero-container .hero-left-carousel-item span.subtitle {
    font-size: 22px;
    margin-bottom: 50px;
  }

  .hero-wrapper .hero-container .hero-right {
    width: 50%;
  }

@supports ((display: -ms-grid) or (display: grid)) {
    .hero-wrapper .hero-container .hero-right .hero-carousel-navigation p.text {
      overflow: hidden;
    }
}

  .hero-wrapper .hero-container .hero-right .hero-carousel-navigation-btn:nth-of-type(2) {
    margin-top: 35px;
    padding-top: 35px;
  }

  .hero-rectangle {
    display: block;
  }



}


@media screen and (min-width: 1200px) {

  .hero-wrapper {
    height: 835px;
  }

  .hero-wrapper .hero-container {
    max-width: calc(100vw - (50% - 585px + 15px));
  }

  .hero-wrapper .hero-container .hero-left-wrapper {
    padding: 0;
    width: 585px;
    padding-right: 125px;
  }

  .hero-wrapper .hero-container .hero-right {
    width: calc(100% - 585px);
  }

  .hero-rectangle--big {
    top: -20px;
  }

  .hero-rectangle--small {
    bottom: -100px;
   
      
  }
 
 .point-color {
	 color: #002266;
 
 } 

  }
</style>
<script>
jQuery(function($) {
	  "use strict";

	  var _extends =
	    Object.assign ||
	    function(target) {
	      for (var i = 1; i < arguments.length; i++) {
	        var source = arguments[i];
	        for (var key in source) {
	          if (Object.prototype.hasOwnProperty.call(source, key)) {
	            target[key] = source[key];
	          }
	        }
	      }
	      return target;
	    };
	  // parallax effect
	  var parallaxEffect = function parallaxEffect(container, els) {
	    var moveX, moveY;
	    if (container && els) {
	      container.addEventListener("mousemove", function(e) {
	        moveX = (e.clientX * -1) / 20;
	        moveY = (e.clientY * -1) / 20;
	        els.forEach(function(el, index) {
	          if (index % 2 != 0) {
	            moveX = -1 * moveX;
	            moveY = -1 * moveY;
	          }
	          el.style.transform = "translate3d(" + moveX + "px," + moveY + "px,0)";
	        });
	      });
	    }
	  };
	  // isScrolledIntoView
	  var isScrolledIntoView = function isScrolledIntoView(el) {
	    var rect = el.getBoundingClientRect(),
	      elemTop = rect.top,
	      elemBottom = rect.bottom,
	      isVisible;
	    // Only completely visible elements return true:
	    isVisible = elemTop >= -50 && elemBottom <= window.innerHeight / 2;
	    return isVisible;
	  };
	  // active class toggle methods
	  var removeClasses = function removeClasses(nodes, value) {
	    if (nodes)
	      return nodes.forEach(function(node) {
	        return node.classList.contains(value) && node.classList.remove(value);
	      });
	    else return false;
	  };
	  var addClass = function addClass(nodes, index, value) {
	    return nodes ? nodes[index].classList.add(value) : 0;
	  };
	  var App = {
	    initHeroSlider: function initHeroSlider() {
	      // hero slider
	      var heroSliderOptions = {
	        dots: false,
	        arrows: false,
	        swipe: window.innerWidth <= 576,
	        responsive: [
	          {
	            breakpoint: 576
	          }
	        ]
	      };
	      $(".hero-right-carousel").on("breakpoint", function(
	        e,
	        slick,
	        breakpoint
	      ) {
	        if (window.innerWidth <= 576)
	          slick.slickSetOption("swipe", true, false);
	        else slick.slickSetOption("swipe", false, false);
	      });
	      $(".hero-right-carousel").on("swipe", function(slick, dir) {
	        setTimeout(function() {
	          $(".hero-left-carousel").slick("slickGoTo", dir.currentSlide);
	        }, 500);
	      });
	      var heroSliderPrev = $(".hero-carousel-navigation-btn.next");
	      var heroSliderNext = $(".hero-carousel-navigation-btn.prev");
	      if (heroSliderPrev) {
	        heroSliderPrev.on("click", function() {
	          $(".hero-left-carousel").slick("slickNext");
	          setTimeout(function() {
	            $(".hero-right-carousel").slick("slickNext");
	          }, 500);
	        });
	      }
	      if (heroSliderNext) {
	        heroSliderNext.on("click", function() {
	          $(".hero-left-carousel").slick("slickPrev");
	          setTimeout(function() {
	            $(".hero-right-carousel").slick("slickPrev");
	          }, 500);
	        });
	      }
	      $(".hero-left-carousel").slick(_extends({}, heroSliderOptions));
	      $(".hero-right-carousel").slick(_extends({}, heroSliderOptions));
	    },
	    initServicesCircle: function initServicesCircle() {
	      // services circle
	      var circles = document.querySelectorAll(".services-subcircle");
	      var circleContents = document.querySelectorAll(".services-content-item");
	      var parent = document.querySelector(".services-circle");
	      if (parent) {
	        var spreadCircles = function spreadCircles() {
	          // spread the subcircles around the circle
	          parent = document
	            .querySelector(".services-circle")
	            .getBoundingClientRect();
	          var centerX = 0;
	          var centerY = 0;
	          Array.from(circles)
	            .reverse()
	            .forEach(function(circle, index) {
	              var angle = index * (360 / circles.length);
	              var x =
		                centerX +
		                (parent.width / 2) * Math.cos((angle * Math.PI) / 180);
		              var y =
		                centerY +
		                (parent.height / 2) * Math.sin((angle * Math.PI) / 180);
	              circle.style.transform =
	                "translate3d(" +
	                parseFloat(x).toFixed(5) +
	                "px," +
	                parseFloat(y).toFixed(5) +
	                "px,0)";
	            });
	        };
	        spreadCircles();
	        var resizeTimer = void 0;
	        window.addEventListener("resize", function() {
	          clearTimeout(resizeTimer);
	          resizeTimer = setTimeout(function() {
	            spreadCircles();
	          }, 50);
	        });
	        circles.forEach(function(circle, index) {
	          var circlesToggleFnc = function circlesToggleFnc() {
	            var index = circle.dataset.circleIndex;
	            if (!circle.classList.contains("active")) {
	              removeClasses(circles, "active");
	              removeClasses(circleContents, "active");
	              addClass(circles, index, "active");
	              addClass(circleContents, index, "active");
	            }
	          };
	          circle.addEventListener("click", circlesToggleFnc, true);
	          circle.addEventListener("mouseover", circlesToggleFnc, true);
	        });
	      }
	    },
	    initBlogCarousel: function initBlogCarousel() {
	      // blog carousel
	      $(".blog-carousel-wrapper").slick({
	        centerMode: true,
	        slidesToShow: 3,
	        slideToScroll: 1,
	        variableWidth: true,
	        arrows: false,
	        dots: true
	      });
	    },
	    initResponsiveMenu: function initResponsiveMenu() {
	      // responsive menu
	      var responsiveMenu = document.querySelector(".responsive-menu");
	      if (responsiveMenu) {
	        document.querySelectorAll(".nav-trigger").forEach(function(el) {
	          return el.addEventListener("click", function() {
	            if (responsiveMenu.classList.contains("active")) {
	              responsiveMenu.classList.remove("active");
	              document.body.classList.remove("no-scroll");
	            } else {
	              responsiveMenu.classList.add("active");
	              document.body.classList.add("no-scroll");
	            }
	          });
	        });
	        var subLinkToggles = document.querySelectorAll(".sublinks-toggle");
	        subLinkToggles.forEach(function(el) {
	          el.addEventListener("click", function() {
	            var subLinks = el.nextElementSibling;
	            if (subLinks.classList.contains("submenu-show")) {
	              subLinks.classList.remove("submenu-show");
	              el.classList.remove("menu-opened");
	            } else {
	              removeClasses(subLinkToggles, "menu-opened");
	              subLinkToggles.forEach(function(c) {
	                if (c.nextElementSibling.classList.contains("submenu-show")) {
	                  c.nextElementSibling.classList.remove("submenu-show");
	                }
	              });
	              subLinks.classList.add("submenu-show");
	              el.classList.add("menu-opened");
	            }
	          });
	        });
	      }
	    },
	    initHomeHeroParallax: function initHomeHeroParallax() {
	      // homepage hero parallax
	      var homeHero = document.getElementsByClassName("hero-wrapper")[0];
	      var homeHerorectangles = document.querySelectorAll(".hero-rectangle");
	      parallaxEffect(homeHero, homeHerorectangles);
	    },
	    initMainHeroParallax: function initMainHeroParallax() {
	      // main hero parallax
	      var mainHero = document.getElementsByClassName("main-hero")[0];
	      var mainHerorectangles = document.querySelectorAll(
	        ".main-hero-rectangle"
	      );
	      parallaxEffect(mainHero, mainHerorectangles);
	    },
	    initSectionRectangles: function initSectionRectangles() {
	      // section title rectangles fill effect
	      var titleRectangles = document.querySelectorAll(".title-rectangle");
	      if (titleRectangles) {
	        window.addEventListener("scroll", function(e) {
	          removeClasses(titleRectangles, "fill");
	          titleRectangles.forEach(function(rect) {
	            if (isScrolledIntoView(rect)) rect.classList.add("fill");
	          });
	        });
	      }
	    },
	    initContactFormToggle: function initContactFormToggle() {
	      // contact form toggle
	      var contactFormBtn = document.getElementsByClassName(
	        "contact-form-box-pulse"
	      )[0];
	      var contactFormWrapper = document.querySelector(".contact-form-box");
	      if (contactFormBtn && contactFormWrapper) {
	        contactFormBtn.addEventListener("click", function() {
	          if (contactFormWrapper.classList.contains("form-active")) {
	            contactFormWrapper.classList.remove("form-active");
	          } else {
	            contactFormWrapper.classList.add("form-active");
	            window.scroll({
	              top:
	                window.pageYOffset +
	                contactFormWrapper.getBoundingClientRect().top -
	                30,
	              behavior: "smooth"
	            });
	          }
	        });
	      }
	    },
	    initBrandVideoToggle: function initBrandVideoToggle() {
	      // brand video toggle
	      var brandVideoBtn = document.querySelector(".brand-video-btn");
	      var brandVideoSection = document.querySelector(".brand-video");
	      var brandVideoContainer = document.querySelector(".video-container");
	      var brandVideoOverlay = document.querySelector(".overlay");
	      var brandVideoClose = document.querySelector(".video-container-close");
	      if (brandVideoBtn && brandVideoSection && brandVideoContainer) {
	        brandVideoBtn.addEventListener("click", function() {
	          var showBrandVideo = function showBrandVideo() {
	            var video =
	              brandVideoContainer.querySelector("iframe") ||
	              brandVideoContainer.querySelector("video source");
	            video.src = video.dataset.src;
	            if (video.tagName == "SOURCE")
	              brandVideoContainer.querySelector("video").load();
	            document.body.classList.add("no-scroll-video");
	            brandVideoSection.classList.add("video-opened");
	            brandVideoOverlay.classList.add("overlay--active");
	          };
	          if (!brandVideoSection.classList.contains("video-opened")) {
	            showBrandVideo();
	          }
	        });
	        brandVideoClose.addEventListener("click", function() {
	          var hideBrandVideo = function hideBrandVideo() {
	            var video =
	              brandVideoContainer.querySelector("iframe") ||
	              brandVideoContainer.querySelector("video source");
	            video.src = "";
	            if (video.tagName == "SOURCE")
	              brandVideoContainer.querySelector("video").pause();
	            document.body.classList.remove("no-scroll-video");
	            brandVideoSection.classList.remove("video-opened");
	            brandVideoOverlay.classList.remove("overlay--active");
	          };
	          if (brandVideoSection.classList.contains("video-opened")) {
	            hideBrandVideo();
	          }
	        });
	      }
	    },
	    initAsideCarousel: function initAsideCarousel() {
	      // Aside carousel
	      var asideCarousel = $(".page-aside-carousel");
	      if (asideCarousel) {
	        var asideCarouselNavNext = $(".page-aside-carousel-nav.next");
	        var asideCarouselNavPrev = $(".page-aside-carousel-nav.prev");
	        $(asideCarousel).slick({
	          slide: ".page-aside-carousel-item",
	          slidesToShow: 1,
	          slideToScroll: 1,
	          dots: false,
	          arrows: false,
	          autoplay: true,
	          autoplaySpeed: 3000,
	          zIndex: 1
	        });
	        asideCarouselNavNext.on("click", function() {
	          return asideCarousel.slick("slickNext");
	        });
	        asideCarouselNavPrev.on("click", function() {
	          return asideCarousel.slick("slickPrev");
	        });
	      }
	    },
	    initTabsNav: function initTabsNav() {
	      // tabs nav responsive
	      var tabsToggle = document.querySelectorAll(".mobile-tab-toggle-btn");
	      var tabsNav = document.querySelector(".nav-tabs-wrapper");
	      var tabsContent = document.querySelector(".nav.nav-tabs");
	      if (tabsNav && tabsContent) {
	        tabsToggle.forEach(function(tabsToggleBtn) {
	          return tabsToggleBtn.addEventListener("click", function() {
	            if (tabsContent.classList.contains("show-me"))
	              tabsContent.classList.remove("show-me");
	            else tabsContent.classList.add("show-me");
	          });
	        });
	        var links = tabsContent.querySelectorAll(".nav-item.nav-link");
	        links.forEach(function(link, i) {
	          link.addEventListener("click", function() {
	            window.scroll({
	              top:
	                window.pageYOffset +
	                document
	                  .querySelector(".tab-pane.active.show .grid-gallery-wrapper")
	                  .getBoundingClientRect().top -
	                30,
	              behavior: "smooth"
	            });
	            tabsContent.classList.remove("show-me");
	            if (i == 0) tabsContent.scrollTop = 0;
	            else if (i == links.length - 1)
	              tabsContent.scrollTop =
	                tabsContent.scrollHeight - tabsContent.clientHeight;
	            else tabsContent.scrollTop = link.offsetTop - 75;
	          });
	        });
	      }
	    },
	    initReferencesCarousel: function initReferencesCarousel() {
	      //references carousel
	      var referencesWrapper = $(".references-wrapper");
	      referencesWrapper.slick({
	        dots: false,
	        arrows: false,
	        autoplay: true,
	        autoplaySpeed: 3000,
	        slidesToShow: 1,
	        slidesToScroll: 1,
	        mobileFirst: true,
	        responsive: [
	          {
	            breakpoint: 767,
	            settings: "unslick"
	          },
	          {
	            breakpoint: 576,
	            settings: {
	              slidesToShow: 2,
	              slidesToScroll: 2
	            }
	          }
	        ]
	      });
	      window.addEventListener("resize", function() {
	        if (window.innerWidth < 768) referencesWrapper.slick("resize");
	      });
	    },
	    truncateBlogListItems: function truncateBlogListItems() {
	      $(".blog-list-item-description").each(function() {
	        var textArray = $(this)
	          .text()
	          .split(" ");
	        while ($(this).prop("scrollHeight") > $(this).prop("offsetHeight")) {
	          textArray.pop();
	          $(this).text(textArray.join(" ") + "...");
	        }
	      });
	      $(window).on("resize", function() {
	        truncateBlogListItems();
	      });
	    },
	    contactForm: function() { $('form#contact-us').submit(function() {
	        $('form#contact-us .error').remove();
	        var hasError = false;
	        $('.requiredField').each(function() {
	          if($.trim($(this).val()) == '') {
	            var labelText = $(this).prev('label').text();
	            $(this).parent().append('<span class="error">'+labelText+' This field is required</span>');
	            $(this).addClass('inputError');
	            hasError = true;
	          } else if($(this).hasClass('email')) {
	            var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	            if(!emailReg.test($.trim($(this).val()))) {
	              $(this).parent().append('<span class="error"> Please enter a valid email address</span>');
	              $(this).addClass('inputError');
	              hasError = true;
	            }
	          }
	        });
	        if(!hasError) {
	          var formInput = $(this).serialize();
	          $.post('contacts.php',formInput, function(data){
	            $('form#contact-us').slideUp("fast", function() {				   
	              $(this).before('<p class="tick"><strong>Thank You! </strong> Your mail has arrived. The return will be made as soon as possible..</p>');
	            });
	          });
	        }
	        
	        return false;	
	      });
	    }
	  };
	  App.initHeroSlider();
	  App.initServicesCircle();
	  App.initBlogCarousel();
	  App.initResponsiveMenu();
	  App.initHomeHeroParallax();
	  App.initMainHeroParallax();
	  App.initSectionRectangles();
	  App.initContactFormToggle();
	  App.initBrandVideoToggle();
	  App.initAsideCarousel();
	  App.initTabsNav();
	  App.initReferencesCarousel();
	  App.truncateBlogListItems();
	  App.contactForm();
	});

</script>
<body>
<br>
<br>
<br>
<br>
<br>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<link rel="stylesheet"
				href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
				integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
				crossorigin="anonymous">
			<link
				href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.css"
				rel="stylesheet">
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
			<div class="hero-wrapper">
				<div
					class="hero-rectangle hero-rectangle--black hero-rectangle--big"></div>
				<div
					class="hero-rectangle hero-rectangle--primary hero-rectangle--small"></div>
				<div class="hero-container">
					<div class="hero-left-wrapper">
						<div class="hero-left-carousel">
							<div class="hero-left-carousel-item">
								<span class="title-small">About Huddling?</span><span
									class="title">Huddling</span><span class="subtitle">다양한
									우리가 모여 함께 더 나은 세상을 만듭니다</span>
								<p class="description">Huddling이란 펭귄들이 무리를 지어 체온 유지를 하는
									행위를 뜻합니다. 서로를 보완하고 감싸는 모습을 모티브로하여 판매자와 구매자 모두 윈윈하도록 성장할 수 있도록 돕는
									크라우드펀딩 플랫폼입니다.</p>

							</div>
							<div class="hero-left-carousel-item">
								<span class="title-small">Brand Mission</span><span
									class="title">Trust</span><span class="subtitle">올바른 생각이
									신뢰를 바탕으로 성장하는 세상을 만들고자 합니다</span>
								<p class="description">허들링 업의 본질은 단순히 자금을 모으는 것이 아닙니다. 금융시장의
									자금이 창업 기업이나 스타트업 등 꼭 필요한 곳에 흘러가도록 하여, 더욱 성장하는 세상을 만드는 것이 우리의
									미션입니다.</p>

							</div>
							<div class="hero-left-carousel-item">
								<span class="title-small">Unique Value</span><span class="title">Growth</span><span
									class="subtitle">허들링에서는 누구나 투자받고 투자하면서 함께 성장합니다</span>
								<p class="description">
									사람들은 자신이 지지하는 기업에 투자합니다. 한 사람 한 사람의 투자가 모여 기업은 성장합니다. 여기, 기업
									하나가 출발선에 있습니다. 그는 자신의 가치를 증명하고 사람들이 그의 가치를 알아봅니다. 서로 지지하고 소통하고
									공유하면서 더 많은 사람들이 그를 알아봅니다. 그렇게 기업은 성장합니다. 또 다른 기업들이 용기를 얻고 출발선에
									섭니다. 사람들의 지지를 받는 기업은 성장합니다. 세상에 자신만의 가치를 품은 기업이 많아집니다. 세상이 조금 더
									나아집니다.<br> 
									<div class="point-color">
									<br> Better Funding <br> Better
									Business <br> Better Life
									</div>
								</p>

							</div>
						</div>
					</div>
					<div class="hero-right">
						<div class="hero-carousel-navigation">
							<p class="text">
								+90 553 760 35 39<span>or</span>team4.Huddling.com
							</p>
							<button class="hero-carousel-navigation-btn next">
								<i class="fas fa-arrow-right"></i>
							</button>
							<button class="hero-carousel-navigation-btn prev">
								<i class="fas fa-arrow-left"></i>
							</button>
						</div>
						<div class="hero-right-carousel">
							<div class="hero-right-carousel-item">
								<img alt="StrucFlex" src="/resources/images/about1.jpg">
							</div>
							<div class="hero-right-carousel-item">
								<img alt="StrucFlex" src="/resources/images/about2.jpg">
							</div>
							<div class="hero-right-carousel-item">
								<img alt="StrucFlex" src="/resources/images/about3.jpg">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
	<br>
<br>
<br>
<br>
<br>


	


</body>
</html>
<%@ include file="include/board_footer.jsp"%>
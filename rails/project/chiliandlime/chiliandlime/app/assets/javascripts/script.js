/**********************************************************************
##
##    Template Name: Extraa - Creative Minimal HTML Template
##    Description: Extraa is an elegant creative theme designed for creative professionals and agencies.
##    Author: MrWP
##    Theme URI: http://themeforest.net/user/MrWP/portfolio
##    Author URI: http://themeforest.net/user/MrWP
##    Version: 1.0
##
*************************************************************************/

$(function () {
	'use strict';

// Menu

  var burgerButton = $(".burger-menu"),
      overlay = $(".overlay");

  burgerButton.on("click", function(){
    $(this).add("body").toggleClass("active");
  });

  overlay.on("click", function(){
    burgerButton.add("body").removeClass("active pop-up-active");
  });

  $(document).on("keyup", function(e) {

    if (e.keyCode === 27) {
      burgerButton.add("body").removeClass("active pop-up-active");
    }

  });


/*	Navigation	*/
  $('.navbar-collapse ul li a').on('click', function () {
    $('.navbar-toggle:visible').trigger('click');
  });

/*	Smooth Scroll	*/
  smoothScroll.init({
    speed: 1600,
    updateURL: false,
    offset: 70
  });


/*	Slider	*/
  $(function() {
    $('#slides').superslides({
      animation: "fade",
      play: 10000,
      slide_easing: 'easeInOutCubic',
      slide_speed: 700,
      pagination: true,
      hashchange: false,
      scrollable: true
    });
  });

  $('#slides').swipe({
    swipeLeft: function () {
      $(this).superslides('animate', 'next');
    },
    swipeRight: function () {
      $(this).superslides('animate', 'prev');
    }
  });

  $(window).scroll(function () {
    if ($(this).scrollTop() === 0) {
      $(".slides-navigation a:hidden").fadeIn(800);
    } else {
      $(".slides-navigation a:visible").fadeOut(800);
    }
  });

/*	Stellar	*/
  $(window).stellar({
    responsive: true,
    horizontalOffset: 0,
    horizontalScrolling: false
  });

/*	WOW	*/
  var wow = new WOW({
    boxClass:     'wow',
    animateClass: 'animated',
    offset:       70,
    mobile:       false
  });
  wow.init();

/*	Testimonials	*/

  $("#owl-testimonials").owlCarousel({
    autoPlay: 3000,
    navigation: false,
    slideSpeed: 300,
    paginationSpeed: 400,
    singleItem: true
  });

/*	Clients	*/
  $("#owl-clients").owlCarousel({
    autoPlay: 2000,
    pagination: false,
    items: 4,
    itemsDesktop: [1000,4],
    itemsDesktopSmall: [900,3],
    itemsTablet: [600,2],
    itemsMobile: [320,1]
  });

/*	CountTo	*/
  $('.countup').appear(function() {
    var count_element =  $(this);
        count_element.countTo({
          from: 0,
          to: parseInt( count_element.text() , 10 ) ,
          speed: 5000
        });
  });

/*	About Carousel	*/
  $(window).load(function () {
    var sync1 = $("#sync1");
    var sync2 = $("#sync2");
    sync1.owlCarousel({
      singleItem: true,
      slideSpeed: 1700,
      pagination: false,
      afterAction: syncPosition,
      responsiveRefreshRate: 150,
    });

    sync2.owlCarousel({
      items : 4,
      itemsDesktop: [1199,4],
      itemsDesktopSmall: [979,4],
      itemsTablet: [768,4],
      itemsMobile: [479,2],
      pagination: false,
      responsiveRefreshRate: 100,
      afterInit: function(el){
        el.find(".owl-item").eq(0).addClass("synced");
      }
    });

    function syncPosition(el){
      var current = this.currentItem;
      $("#sync2")
        .find(".owl-item")
        .removeClass("synced")
        .eq(current)
        .addClass("synced")
      if($("#sync2").data("owlCarousel") !== undefined){
        center(current)
      }
    }

    $("#sync2").on("click", ".owl-item", function(e){
      e.preventDefault();
      var number = $(this).data("owlItem");
      sync1.trigger("owl.goTo",number);
    });

    function center(number){
      var sync2visible = sync2.data("owlCarousel").owl.visibleItems;
      var num = number;
      var found = false;
      for(var i in sync2visible){
        if(num === sync2visible[i]){
          var found = true;
        }
      }

      if(found===false){
        if(num>sync2visible[sync2visible.length-1]){
          sync2.trigger("owl.goTo", num - sync2visible.length+2)
        }else{
          if(num - 1 === -1){
            num = 0;
          }
          sync2.trigger("owl.goTo", num);
        }
      } else if(num === sync2visible[sync2visible.length-1]){
        sync2.trigger("owl.goTo", sync2visible[1])
      } else if(num === sync2visible[0]){
        sync2.trigger("owl.goTo", num-1)
      }

    }
  });

/*	GMap	*/
  jQuery(document).ready(function($){
		var latitude = 51.5255069,
		longitude = -0.0836207,
		map_zoom = 15;

      var is_internetExplorer11= navigator.userAgent.toLowerCase().indexOf('trident') > -1;
      var marker_url = ( is_internetExplorer11 ) ? 'images/cd-icon-location.png' : 'images/cd-icon-location.svg';

      var	main_color = '#f1f3f6',
          saturation_value= -100,
          brightness_value= 20;

      var style= [
          {
              elementType: "labels",
              stylers: [
                  {saturation: saturation_value}
              ]
          },
          {
              featureType: "poi",
              elementType: "labels",
              stylers: [
                  {visibility: "off"}
              ]
          },
          {
              featureType: 'road.highway',
              elementType: 'labels',
              stylers: [
                  {visibility: "off"}
              ]
          },
          {
              featureType: "road.local",
              elementType: "labels.icon",
              stylers: [
                  {visibility: "off"}
              ]
          },
          {
              featureType: "road.arterial",
              elementType: "labels.icon",
              stylers: [
                  {visibility: "off"}
              ]
          },
          {
              featureType: "road",
              elementType: "geometry.stroke",
              stylers: [
                  {visibility: "off"}
              ]
          },
          {
              featureType: "transit",
              elementType: "geometry.fill",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          },
          {
              featureType: "poi",
              elementType: "geometry.fill",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          },
          {
              featureType: "poi.government",
              elementType: "geometry.fill",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          },
          {
              featureType: "poi.sport_complex",
              elementType: "geometry.fill",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          },
          {
              featureType: "poi.attraction",
              elementType: "geometry.fill",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          },
          {
              featureType: "poi.business",
              elementType: "geometry.fill",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          },
          {
              featureType: "transit",
              elementType: "geometry.fill",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          },
          {
              featureType: "transit.station",
              elementType: "geometry.fill",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          },
          {
              featureType: "landscape",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]

          },
          {
              featureType: "road",
              elementType: "geometry.fill",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          },
          {
              featureType: "road.highway",
              elementType: "geometry.fill",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          },
          {
              featureType: "water",
              elementType: "geometry",
              stylers: [
                  { hue: main_color },
                  { visibility: "on" },
                  { lightness: brightness_value },
                  { saturation: saturation_value }
              ]
          }
      ];

      var map_options = {
          center: new google.maps.LatLng(latitude, longitude),
          zoom: map_zoom,
          panControl: false,
          zoomControl: false,
          mapTypeControl: false,
          streetViewControl: false,
          mapTypeId: google.maps.MapTypeId.ROADMAP,
          scrollwheel: false,
          styles: style,
      }
      var map = new google.maps.Map(document.getElementById('gmap-section'), map_options);
      var marker = new google.maps.Marker({
          position: new google.maps.LatLng(latitude, longitude),
          map: map,
          visible: true,
          icon: marker_url,
      });

      function CustomZoomControl(controlDiv, map) {
          var controlUIzoomIn= document.getElementById('cd-zoom-in'),
              controlUIzoomOut= document.getElementById('cd-zoom-out');
          controlDiv.appendChild(controlUIzoomIn);
          controlDiv.appendChild(controlUIzoomOut);

          google.maps.event.addDomListener(controlUIzoomIn, 'click', function() {
              map.setZoom(map.getZoom()+1)
          });
          google.maps.event.addDomListener(controlUIzoomOut, 'click', function() {
              map.setZoom(map.getZoom()-1)
          });
      }

      var zoomControlDiv = document.createElement('div');
      var zoomControl = new CustomZoomControl(zoomControlDiv, map);

      map.controls[google.maps.ControlPosition.LEFT_TOP].push(zoomControlDiv);
  });


});

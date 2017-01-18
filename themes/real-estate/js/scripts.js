jQuery(document).ready(function(){
  function svgasimg() {
    return document.implementation.hasFeature(
      "http://www.w3.org/TR/SVG11/feature#Image", "1.1");
  }

  if (!svgasimg()){
    var e = document.getElementsByTagName("img");
    if (!e.length){
      e = document.getElementsByTagName("IMG");
    }
    for (var i=0, n=e.length; i<n; i++){
      var img = e[i],
          src = img.getAttribute("src");
      if (src.match(/svgz?$/)) {
        /* URL ends in svg or svgz */
        img.setAttribute("src",
               img.getAttribute("data-fallback"));
      }
    }
  }

  window.sr = ScrollReveal();
  sr.reveal('.foo');


  // jQuery(window).scroll(function() {
  //   var scroll = jQuery(window).scrollTop();

  //   if(scroll >= 10) {
  //     jQuery("#sticky").addClass("fixed");
  //   } else
  //     jQuery("#sticky").removeClass("fixed");
  // });

  // jQuery( "#partnerTabs" ).tabs({
  //   heightStyle: "auto"
  // });
  jQuery( "#tabs" ).tabs({
    heightStyle: "auto"
  });
  jQuery( "#accordion" ).accordion();

  jQuery('.bxslider').bxSlider({
    pager: false, 
    adaptiveHeight: true,
    responsive: true,
    pause: 5000,
    auto: false,
    pager: false,
    onSliderLoad: function(){
      jQuery('.bxslider-testimonials').css('visibility', 'visible');
    }
  });
  
  // var width = jQuery(document).width();
  // function testimonialsSlider(){
  //   jQuery('.bxslider-testimonials').bxSlider({
  //     minSlides: 1,
  //     maxSlides: 3,
  //     slideWidth: 400,
  //     slideMargin: 25,
  //     auto: false,
  //     onSliderLoad: function(){
  //       jQuery('.bxslider').css('visibility', 'visible');
  //     }
  //   });
  //   if(width<=1280){
  //     jQuery('.bxslider-testimonials').bxSlider({
  //       minSlides: 1,
  //       maxSlides: 2,
  //       slideWidth: 400,
  //       moveSlides: 1 
  //     });      
  //   }
  //   // if(width<=1024){
  //   //   minSlides: 1,
  //   //   maxSlides: 2,
  //   //   slideWidth: 400,
  //   //   moveSlides: 1 
  //   // }
  //   if(width<=768){
  //     jQuery('.bxslider-testimonials').bxSlider({
  //       minSlides: 1,
  //       maxSlides: 1,
  //       slideWidth: 480,
  //       moveSlides: 1
  //     });         
  //   }
  //   if(width<=480){
  //     jQuery('.bxslider-testimonials').bxSlider({
  //       slideWidth: 320,
  //       moveSlides: 1
  //     });          
  //   }
  // }  
  // testimonialsSlider();

  // var testimonialsSlider;    
  // function bxslider(){
  //   minSlides: 1,
  //   maxSlides: 3,
  //   slideWidth: 400,
  //   slideMargin: 25,
  //   auto: false,
  //   onSliderLoad: function(){
  //     jQuery('.bxslider').css('visibility', 'visible');
  //   }  

  //   var width = jQuery(document).width();
  //   if(width<=1280){
  //     slider=jQuery('.bxslider-testimonials').bxSlider({
  //       minSlides: 1,
  //       maxSlides: 2,
  //       slideWidth: 400,
  //       moveSlides: 1        
  //     });
  //   }

  //   if(width<=768){
  //     var slider=jQuery('.bxslider-testimonials').bxSlider({
  //       minSlides: 1,
  //       maxSlides: 1,
  //       slideWidth: 480,
  //       moveSlides: 1
  //    });
  //   } 

  //   if(width<=480){
  //     var slider=jQuery('.bxslider-testimonials').bxSlider({
  //       slideWidth: 320,
  //       moveSlides: 1
  //    });
  //   }  
  //   testimonialsSlider.reloadSlider();
  // }  

  jQuery('.bxslider-tips').bxSlider({
    minSlides: 1,
    maxSlides: 1,
    // slideWidth: 400,
    slideMargin: 25,
    auto: false,
    controls: false,
    pager: false,
    onSliderLoad: function(){
      jQuery('.bxslider').css('visibility', 'visible');
    }
  });

  jQuery('.slimmenu').slimmenu(
  {
      resizeWidth: '1150',
      collapserTitle: '',
      animSpeed:'medium',
      indentChildren: true,
      childrenIndenter: '&raquo;',
      expandIcon: '<i class="fa fa-angle-down"></i>',
      collapseIcon: '<i class="fa fa-angle-up"></i>'
  });

  // jQuery('.slimmenu-submenu').slimmenu(
  // {
  //     resizeWidth: '1024',
  //     collapserTitle: '',
  //     animSpeed:'medium',
  //     indentChildren: true,
  //     childrenIndenter: '&raquo;',
  //     expandIcon: '<i class="fa fa-angle-down"></i>',
  //     collapseIcon: '<i class="fa fa-angle-up"></i>'
  // });

  jQuery(function() {
   jQuery('a[href*="#-sc-"]:not([href="#"])').click(function() {
     if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
       var target = jQuery(this.hash);
       target = target.length ? target : jQuery('[name=' + this.hash.slice(1) +']');
       if (target.length) {
         jQuery('html, body').animate({
           scrollTop: target.offset().top - 150
         }, 1000);
         return false;
       }
     }
   });
  });

  // jQuery("#watch").click(function() {
  //     var video = jQuery("#video").get(0);
  //     video.play();

  //     jQuery("#overlay").css("visibility", "hidden");
  //     return false;
  // });

  // jQuery("#watchtext").click(function() {
  //     var video = jQuery("#video").get(0);
  //     video.play();

  //     jQuery("#overlay").css("visibility", "hidden");
  //     return false;
  // });

  // jQuery(window).load(function() {
  //       // Animate loader off screen
  //       jQuery(".se-pre-con").fadeOut("slow");;
  //   });
  
  jQuery(".searchicon").click(function() {
    jQuery(".searchfield").show();
    jQuery(".searchicon").hide();
    jQuery(".search-submit").css('display', 'block');
  });
});

jQuery(window).on('orientationchange load resize', function () {
  // testimonialsSlider();
});




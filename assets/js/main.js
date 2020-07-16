$(document).ready(function(){
    "use strict";
    document.addEventListener("touchstart",function(){},!0);
    $(".fixed-single-content .items").theiaStickySidebar({
        additionalMarginTop: 30
    });
    $(window).resize(function(){
       if ($(window).width() < 992) {
           $("single-project").removeClass("fixed-single-content");
       }
    });
    $(".hamburger").on("click", function() {
        $(".hamburger").toggleClass("active");
        if ($(".hamburger").hasClass('active')) {
            $("body, html").bind("mousewheel", function() {
                return false;
            });
            $("header .header-holder .menu-toggle").fadeIn("slow");
        } else {
            $("header .header-holder .menu-toggle").fadeOut("slow");
            $("body, html").unbind("mousewheel");
        }
    });
    $(function(){
      $('#menu').slicknav({
          label:'',
          prependTo:'#menu-holder'
      });
    });
    $(window).load(function(){
        "use strict";
        $(function() {
            var footerheight = $(".footer-fixed").outerHeight();
            var footermargin = (footerheight)+"px";
            $(".wrapper").css("margin-bottom",footermargin);
        });
        $(".masonry").isotope({
            itemSelector: ".selector"
        })
        $("#owl-example").owlCarousel({
            items : 3,
            autoPlay : true,
            navigation : false,
            pagination : true,
            paginationNumbers: false,
            responsive: true,
            responsiveRefreshRate : 200,
            responsiveBaseWidth: window,
            baseClass : "owl-carousel",
            theme : "owl-theme",
            lazyLoad : false,
            lazyFollow : true,
            lazyEffect : "fade"
        });
        $("#owl-example2").owlCarousel({
            items : 6,
            autoPlay : true,
            navigation : false,
            pagination : false,
            paginationNumbers: false,
            responsive: true,
            responsiveRefreshRate : 200,
            responsiveBaseWidth: window,
            baseClass : "owl-carousel",
            theme : "owl-theme",
            lazyLoad : false,
            lazyFollow : true,
            lazyEffect : "fade"
        });
        $("#owl-example3").owlCarousel({
            items : 1,
            autoPlay : true,
            navigation : false,
            pagination : true,
            paginationNumbers: false,
            responsive: true,
            responsiveRefreshRate : 200,
            responsiveBaseWidth: window,
            baseClass : "owl-carousel",
            theme : "owl-theme",
            lazyLoad : false,
            lazyFollow : true,
            lazyEffect : "fade"
        });

        $('.test-popup-link').magnificPopup({
            gallery: {
                enabled: true
              },
          type: 'image'
        });
        var t = $(".masonry").isotope({
            itemSelector: ".selector"
        }),
        i = {
            numberGreaterThan50: function() {
                var t = $(this).find(".number").text();
                return parseInt(t, 10) > 50
            },
            ium: function() {
                var t = $(this).find(".name").text();
                return t.match(/ium$/)
            }
        };
        $("#filters").on("click", "li", function() {
            var n = $(this).attr("data-filter");
            n = i[n] || n, t.isotope({
                filter: n
            })
        }), $(".filters").each(function(t, i) {
            var n = $(i);
            n.on("click", "li", function() {
                n.find(".active").removeClass("active"), $(this).addClass("active")
            })
        });
        $(function(){
            $(".type-element").typed({
                strings: ["Saline","Creative","Crafted"],
                typeSpeed: 130
            });
        });

    });
});

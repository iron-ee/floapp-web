// This is the custom javascript file 

$(window).on("load", function() {
    "use strict";
    // === Page Load Animation ===
    $("#preloaderTL").delay(400).fadeOut("slow");
    
});// END LOAD

jQuery(document).ready(function($) {
    "use strict";

    // === Header Menu Button ===
    $('#menu-button').on('click',function(e){
        e.preventDefault();
        $(this).toggleClass('close-icon');
        $('#main-nav').toggleClass('fade');
        // player toggle
        $('#player-button').removeClass('close-icon');
        $('.jp-audio').removeClass('fade');
        $('.jp-jplayer').removeClass('img-fade');
        // search toggle
        $('#search-button').removeClass('close-icon');
        $('#search-nav').removeClass('fade');
    });
    $('#main-nav').on('click',function(){
        $('#menu-button').removeClass('close-icon');
        $('#main-nav').removeClass('fade');
    });

    // === Header Player Button ===
    $('#player-button').on('click',function(e){
        e.preventDefault();
        $(this).toggleClass('close-icon');
        $('.jp-audio').toggleClass('fade');
        $('.jp-jplayer').toggleClass('img-fade');
        // search toggle
        $('#search-button').removeClass('close-icon');
        $('#search-nav').removeClass('fade');
        // menu toggle
        $('#menu-button').removeClass('close-icon');
        $('#main-nav').removeClass('fade');
    });

    // === Header Search Button ===
    $('#search-button').on('click',function(e){
        e.preventDefault();
        $(this).toggleClass('close-icon');
        $('#search-nav').toggleClass('fade');
        // menu toggle
        $('#menu-button').removeClass('close-icon');
        $('#main-nav').removeClass('fade');
        // player toggle
        $('#player-button').removeClass('close-icon');
        $('.jp-audio').removeClass('fade');
        $('.jp-jplayer').removeClass('img-fade');
    });
    $('#search-nav button').on('click',function(){
        $('#search-button').removeClass('close-icon');
        $('#search-nav').removeClass('fade');
    });

   // Open Close PlayList
    $('#playlist-toggle').on('click',function(e){
        e.preventDefault();
        $(this).toggleClass('close-icon');
        $('#jp_container_1').find(".jp-playlist").fadeToggle(100);
    });

   // === Sidebar Instagram Widget ===
    var feedSidebar = new Instafeed({
        get: 'user',
        userId: 2270734710, // your user id
        accessToken: '2270734710.38c1284.f5b72cce5cc54bbc8dbacb7d3436e1ce', // your access token
        sortBy: 'most-liked',
        template: '<li><a href="{{link}}" target="_blank"><img class="img-responsive" src="{{image}}" /></a></li>',
        target: 'instagram-sidebar-widget',
        limit: 9,
        resolution: 'low_resolution'
    });
    if ($('#instagram-sidebar-widget').length>0) {
        feedSidebar.run();
    }

    // === Footer Instagram Slider ===
    var feedFooter = new Instafeed({
        get: 'user',
        userId: 2270734710, // your user id
        accessToken: '2270734710.38c1284.f5b72cce5cc54bbc8dbacb7d3436e1ce', // your access token
        sortBy: 'most-liked',
        template: '<div><a href="{{link}}" target="_blank"><img class="img-responsive" src="{{image}}" /></a></div>',
        target: 'instagram-carousel',
        limit: 9,
        resolution: 'low_resolution',
        after: function () {
            $('#instagram-carousel').owlCarousel({
                items: 6,
                navigation: false,
                pagination: false,
                autoPlay: 4000
            });
        }
    });
    feedFooter.run();
    
    // === Home Slider ===
    $('#home-slider').owlCarousel({
        addClassActive: true,
        items: 1,
        navigation: false,
        dots: false,
        itemsDesktop : [1199,1],
        itemsDesktopSmall : [980,1],
        itemsTablet: [768,1],
        itemsTabletSmall: false,
        itemsMobile : [479,1],
        autoPlay: 4000, // time each slide is displayed
        transitionStyle: "fadeUp",
        //Basic Speeds
        slideSpeed : 200,
        paginationSpeed : 800,
        rewindSpeed : 1000,
        dragBeforeAnimFinish: false,
        mouseDrag: false,
        
        beforeMove: function(){
        // BEFORE going to the next slide (hide captions)
        $('.owl-item').find('.text-container').removeClass('activated');
        }, 
        afterMove: function(){
            // AFTER going to next slide (show captions)
            setTimeout(function(){
               $('.owl-item.active').find('.text-container').addClass('activated');
            }, 600);
        }
    });

    // === Countdown track.html config ===
    if ($('#countdown-2').length>0) {
        $("#countdown-2").countdown({
            date: "12 june 2016 12:00:00", // Edit this line
            format: "on"
        },
        function() {
          // This will run when the countdown ends
        });
    }

    // === Responsive Videos ===
    $(".embed-video").fitVids();

    // ScrollTo annimation
    if ($('.scrollTo').length>0) {
        $('.scrollTo').on('click',function (e) {
            e.preventDefault();
            var target = this.hash,
            $target = $(target);
            $('body, html').stop().animate({
                'scrollTop': $(target).offset().top-0
            }, 1000, 'swing', 
            function() {
                window.location.hash = target;
            });
        }); // End Click  
    }

    // Extend Event Info
    $(".event").find(".open-icon").on('click', function() {
        var $thisPrev = $(this).prev();
        $(".event").find(".info-wrapper").not($thisPrev).slideUp("fast");
        $(".event").find(".open-icon").not(this).removeClass("close-icon");
        $(this).prev().slideToggle("slow");
        $(this).toggleClass("close-icon");
    });//End Click 

    // == Back to top Button ===
    $(window).scroll(function(){
        if($(document).scrollTop() > 600) {    
            $('.back-to-top').css({bottom:"-1px"});
        }
        else {  
           $('.back-to-top').css({bottom:"-40px"});
        }
    });
    $('.back-to-top').click(function(){
        $('html, body').animate({scrollTop:0}, 'slow');
        return false;
    }); 

    // === Form Validation ===
    // Single Post Form
    $('#comment-form').validate({
        rules: {
            email: {
                required: true,
                email: true
            }
        }, //end rules
        messages: {
            email: {
                required: "Please type a e-mail address.",
                email: "This is not a valid email address."
            }
        }
    }); 
    // Contact Homepage Form
    $('#contact-form').validate({
        rules: {
            email: {
                required: true,
                email: true
            }
        }, //end rules
        messages: {
            email: {
                required: "Please type a e-mail address.",
                email: "This is not a valid email address."
            }
        }
    });// end validate 

});// END READY
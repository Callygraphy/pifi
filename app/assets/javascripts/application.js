// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .


var timer;
var timer2;
var timer3;




$(window).load(function(){


       $(function($) {
               timer = setTimeout(bgAnim, 0);
                timer2 = setTimeout(innerAnim, 0);
                timer3 = setTimeout(textAnim, 0);
              });


       });


$(document).ready(function(){
    $('#myModal').modal('show');
    });

function bgAnim() {
        $("body").animate({
      backgroundColor: "#baffec"
  }, 20000, "linear" );
   $("body").animate({
      backgroundColor: "#d4e991"
  }, 20000, "linear" );
  $("body").animate({
      backgroundColor: "#91f6a7"
  }, 20000, "linear", function() {
                        timer = setTimeout(bgAnim, 0);
  });
}

function innerAnim() {
        $(".inner").animate({
      backgroundColor: "#baffec"
  }, 20000, "linear" );
   $(".inner").animate({
      backgroundColor: "#d4e991"
  }, 20000, "linear" );
  $(".inner").animate({
      backgroundColor: "#91f6a7"
  }, 20000, "linear", function() {
                        timer2 = setTimeout(innerAnim, 0);
  });
}

function textAnim() {
        $(".input_text").animate({
          color: "#baffec"
  }, 20000, "linear" );
   $("#dream_text").animate({
     color: "#d4e991"
  }, 20000, "linear" );
  $("#dream_text").animate({
    color: "#d4e991"
  }, 20000, "linear", function() {
                        timer3 = setTimeout(textAnim, 0);
  });
}

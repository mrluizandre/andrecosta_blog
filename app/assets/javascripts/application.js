// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require popper
//= require bootstrap-sprockets
//= require highlight_pack
//= require jquery
//= require jquery_ujs
//= require ckeditor/init
//= require ckeditor/plugins/widget/plugin
//= require ckeditor/plugins/codesnippet/plugin
//= require ckeditor/config
//= require rails-ujs
//= require turbolinks
//= require_tree .


$(document).ready(function(){
  var scrollTop = 0;
  $(window).scroll(function(){
    scrollTop = $(window).scrollTop();
     // $('.counter').html(scrollTop);

    if (scrollTop >= 1) {
      $('#top-bar').addClass('scrolled-nav');
    } else if (scrollTop < 1) {
      $('#top-bar').removeClass('scrolled-nav');
    }

  });

});

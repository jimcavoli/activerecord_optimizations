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
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .

function showProfiling() {
  if(window.location.pathname === "/") {
    return;
  }

  $('.profiler-results > .profiler-result > .profiler-button').first().click();
  setTimeout(function() {
    $('a.profiler-toggle-trivial:visible:contains("show trivial")').click();
  },50);
}

$(document).ready(function() {
  setTimeout(function() {
    showProfiling();
  }, 500);
});

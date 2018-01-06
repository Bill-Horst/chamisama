$(document).on('turbolinks:load', function() { // specifically for Rails 5 (require in application.js)
  // custom notice disappears after delay
  $('.custom-notice').delay(3000).fadeOut('slow');

  // refreshes the raty ratings every time the page loads
  refreshRating();
});

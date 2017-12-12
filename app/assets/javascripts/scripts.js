$( document ).on('turbolinks:load', function() { // specifically for Rails 5 (require in application.js)
  $('.custom-notice').delay(3000).fadeOut();
});

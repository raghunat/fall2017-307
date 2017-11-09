// NEEDS JQUERY (a script tag with the jquery script in your html)
function goToHome() {
  // Hide the form
  $('#welcome-screen form').css('visibility', 'hidden');
  // show the loader
  $('#welcome-screen .sk-folding-cube').fadeIn();

  $.getJSON('/stats')
    .done(function(data) {
      // populate the home page data
      $('#social-with').html(data.number_of_people);
      $('#minutes-social').html(data.total_time_in_minutes);
      $('#my-person').css('background-image', `url(${data.my_person.img})`);
      $('#my-place').css('background-image', `url(${data.my_place.img})`);

      var homeScreen = document.querySelector('#home');

      // changing it from 100% -> 0
      homeScreen.style.left = 0;
    })
    .fail(function(err) {
      alert('Oops my bad, something bad happened');
      console.error(err);
    });
}

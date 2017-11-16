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


function goToSocial() {
  $('#social').fadeIn();

  // get the first person, and apply state 1
  // after 5 seconds get the second person, and apply state 2
  var state = 0;

  setInterval(() => {
    state++;

    $.getJSON('/people/' + state)
      .done(data => {
          //add the image tag
          //apply the new class
          $('#images').append(`<img style="display:none" src="${data[data.length - 1].pic}">`);

          $('#images img:last-of-type').fadeIn();

          $('#images').attr('class', 'state' + state);
      });

  }, 5000);


  var seconds = 0;
  var minutes = 0;
  var hours = 0;

  setInterval(() => {
    seconds++;
    if (seconds % 60 == 0) {
      seconds = 0;
      minutes++;

      if (minutes % 60 == 0 ) {
        minutes = 0;
        hours++;
      }
    }

    var secondsString = seconds,
      minutesString = minutes,
      hoursString = hours;

    if (seconds < 10) {
      secondsString = "0" + seconds;
    }
    if (minutes < 10) {
      minutesString = "0" + minutes;
    }
    if (hours < 10) {
      hoursString = "0" + hours;
    }

    $('#seconds').html(secondsString);
    $('#minutes').html(minutesString);
    $('#hours').html(hoursString);
  }, 1000);
}

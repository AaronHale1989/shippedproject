





var boat = document.getElementById("boat")

boat.style.position = "relative"

var start = Date.now();

 var timer = setInterval(function() {
  var timePassed = Date.now() - start;

  boat.style.left = timePassed / 5 + 'px';

  if (timePassed > 5000) clearInterval(timer);

}, 10);

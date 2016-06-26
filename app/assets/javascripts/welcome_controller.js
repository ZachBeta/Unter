// hit a simple end point with ajax and have a controller give us this
var cars = [];

$.get('/nearby_drivers', //data format for params?
      function setCars(responseData) {
        cars = responseData.nearbyDrivers;
      });

// google maps code here on
var map,
carMarkers = [];

function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {
      lat: 41.3083,
      lng: -72.9279
    },
    zoom: 14
  });
  var image = {
    url: 'car.png',
    scaledSize: new google.maps.Size(32, 32),
    origin: new google.maps.Point(0, 0),
    anchor: new google.maps.Point(16, 16)
  };

  _(cars).each(function createCarPin(car) {
    var marker = new google.maps.Marker({
      position: {
        lat: car.lat,
        lng: car.lng
      },
      map: map,
      icon: image
    });
    carMarkers.push(marker);
  });
}

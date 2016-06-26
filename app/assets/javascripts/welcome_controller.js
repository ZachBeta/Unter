//data to extract
var cars = [
  {
    lat: 41.3083,
    lng: -72.9279
  },{
    lat: 41.324668,
    lng: -72.9123427
  },{
    lat: 41.3154237,
    lng: -72.9209239
  }
]

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

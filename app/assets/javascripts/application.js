// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 47.6097, lng: -122.3331},
    zoom: 12
  });
  // NOTE: This uses cross-domain XHR, and may not work on older browsers.
  map.data.loadGeoJson('https://storage.googleapis.com/maps-devrel/google.json');
}

/*
url = "https://data.seattle.gov/resource/7ais-f98f.json"

$.getJSON("https://data.seattle.gov/resource/7ais-f98f.json", function(data){
    for (var i = 0, len = data.length; i < len; i++) {
        console.log(data[i]);
    }
});
*/
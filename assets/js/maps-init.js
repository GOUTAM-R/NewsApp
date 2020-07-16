$(window).load(function(){
	"use strict";
	$(function initMap() {
		var uluru = {lat: 51.5016982, lng: -0.1421623};
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom: 14,
			center: uluru,
			zoomControl: false,
			scrollwheel: false,
			disableDoubleClickZoom: true,
		});
		var marker = new google.maps.Marker({
			position: uluru,
			map: map
		});
	});
});
var mapObj = {
		mapElement : "",
		displayMap : function(){
			var mpElement = this.mapElement;
			navigator.geolocation.getCurrentPosition(function(position){
				console.log(position);
				var lat = position.coords.latitude;
				var lng = position.coords.longitude;
				var latlng = new google.maps.LatLng(lat,lng);
			    var myOptions = {
			      zoom: 8,
			      center: latlng,
			      mapTypeId: google.maps.MapTypeId.ROADMAP
			    };
			    var googleMap = new google.maps.Map(mpElement,myOptions);
			    var marker = new google.maps.Marker({
			        position: latlng, 
			        map: googleMap, 
			        title:"Welcome"
			    });   
			});
		}
};

$.fn.map = function(){
	mapObj.mapElement = document.getElementById("mapplaceholder");
	$.getScript("http://maps.googleapis.com/maps/api/js?sensor=true&callback=mapObj.displayMap");
};

